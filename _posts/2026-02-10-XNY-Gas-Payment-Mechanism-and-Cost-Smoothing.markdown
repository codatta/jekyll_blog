---
layout: post
title: "$XNY Gas Payment Mechanism and Cost Smoothing"
date:   2026-02-10 12:00:00 +0800
categories: [Blockchain]
author: George
status: opinion
image: 
excerpt: "This article describes how to build a sustainable gas payment system using AMM-based auto-swap, price smoothing, and gas buffer pools, so that $XNY can reliably function as a gas payment asset."
---

## Background

In today’s Web3 user experience, gas fees are like a “digital moat” between users and protocol value. Gas is not only the mandatory economic cost for every interaction, but also a cognitive barrier and operational friction that significantly limits the depth and breadth of decentralized application adoption.

The traditional model treats gas as an “entry fee” for interacting with a blockchain. In practice, this blocks 99% of potential users: many cannot even start because they do not hold the native token; others hesitate because of cost volatility; some simply drop off because of the clumsy UX. The result is a paradox: we build an open, inclusive next-generation internet, yet put a paywall right at its entrance.

For us, gas payment by a third party — or more precisely, allowing users to pay for on-chain transactions with an ERC‑20 token — is far more than a user subsidy or marketing tactic. It is a fundamental shift: we reframe gas from a **user cost** into an **ecosystem investment**.

In the previous article, the Gasless Adapter enabled $XNY to support ERC‑3009 signed transfers. This solved the problem of $XNY not being usable for x402 payments, and it also provided the technical foundation for paying gas with $XNY: the user signs an ERC‑3009 authorization to pay $XNY to a paymaster, and the paymaster pays the actual gas fee in ETH on-chain. At first glance, gas payment seems to be that simple. But once we think a bit deeper, two questions arise: **how much $XNY should the user pay the paymaster**, and **where does the paymaster’s ETH actually come from**?

## Problem Analysis

### Roles

The gas payment mechanism involves two key roles:

**Bundler**
- **Responsibilities**: Collects user transaction requests, batches them, and submits them to the chain.
- **Cost**: **Fronts** ETH as gas fees to submit transactions.
- **Revenue**: Receives ETH from the paymaster to cover its gas outlay.
- **Characteristics**: Focuses on transaction batching and submission, and does not directly handle fee settlement with users.

**Paymaster**
- **Responsibilities**: Collects $XNY from users as service fees, and handles fee settlement and asset conversion.
- **Cost**: Must convert user-paid $XNY into ETH to reimburse bundlers.
- **Revenue**: Earns service fees by providing gas payment services.
- **Characteristics**: Governs the economic model of the gas payment system.

### Gas Payment Flow

Let’s first walk through the complete flow of the gas payment service:

1. **User pays with $XNY**: The user signs an ERC‑3009 authorization to pay $XNY as a service fee. The user does not need to hold ETH and does not need to actively submit a transaction.
2. **Bundler submits the transaction and pays ETH gas**: The bundler collects user transaction requests, submits them on-chain, and fronts ETH as gas.
3. **Paymaster receives $XNY from the user**: The paymaster collects $XNY from the user as the service fee.
4. **Paymaster pays ETH to the bundler**: The paymaster reimburses the bundler for the gas it fronted, ensuring the bundler remains profitable and has enough ETH to continue submitting transactions.

### Key Issues

**Transaction cost accounting**: In Codatta’s gas payment model, the bundler submits transactions on behalf of users and pays the **real** on-chain gas cost in ETH. The paymaster charges users in $XNY and then pays ETH to the bundler. This requires the system to accurately estimate how much gas each user request will consume on-chain and how much $XNY the user needs to pay. If the estimate is too high, the quoted fee is unfair and UX suffers; if too low, the paymaster will slowly lose money. Therefore, **per-request metering** of gas usage is the first foundation of the pricing model.

**Asset mismatch**: The paymaster needs ETH to reimburse the bundler’s gas expenses, but users pay in $XNY. This creates a natural **asset mismatch** in the model. As long as the paymaster keeps submitting transactions for users, its ETH balance will keep going down, while all incoming value is in $XNY. Without a reliable $XNY → ETH conversion mechanism, the paymaster will eventually run out of ETH and be unable to keep compensating bundlers, which breaks the sustainability of the gas payment service. So the mechanism must solve this structural problem: **how to convert user-paid $XNY into ETH in a stable and trust-minimized way**.

**Price staleness**: In a real system, the moment when the user signs the payment authorization and the moment when the bundler actually submits the transaction on-chain do not always coincide. There can be a gap of several seconds or more. If $XNY’s price drops significantly in that interval, the $XNY amount agreed at signing may no longer cover the current gas cost when converted to ETH. Either the paymaster ends up subsidizing the difference, or the transaction has to fail. In other words, the price is not a constant snapshot; it can **go stale** between signing and execution. The pricing and risk management model must explicitly account for this.

## Solution

### Gas Cost Decomposition and Calculation

For a single gas payment request, we can roughly decompose the total gas into two parts:

1. **User-specific gas: gas tightly coupled to the user’s own request**
   - This part comes from the business logic the user actually executes, for example:
     - Calling a Codatta smart contract method, such as writing data or settling a task.
     - State changes in the upper-layer protocol.
   - Characteristics:
     - This cost differs per user and per request, depending on what the user actually does.
     - From a fairness perspective, each user should fully bear this part of the cost.

   Key gas metering code:

   ```solidity
   uint256 gasBeforeOp = gasleft();
   (success,) = op.target.call{gas: op.callGasLimit}(op.callData);
   uint256 gasAfterOp = gasleft();
   uint256 gasUsed = gasBeforeOp - gasAfterOp;
   ```

2. **Shared gas: extra gas to provide the gas payment service**
   - This part is unrelated to any single user’s business logic and instead pays for keeping the gas payment infrastructure running, such as:
     - Management logic in the paymaster contract (tracking batches, settlement state, etc.).
     - Fixed overhead for batched execution and batched settlement.
     - Extra operations like swaps that convert $XNY to ETH.
   - Characteristics:
     - This is an “infrastructure cost” rather than a cost that a single user should exclusively bear.
     - A more reasonable approach is to amortize this cost across all users who use the gas payment service.

In the pricing model, we can compute the gas consumption for these two parts and then derive the gas a user needs to pay:

$$
UserGasToPay = UserSpecificGas + UserShareOfSharedGas
$$

In the estimation phase, we can compute the user-specific gas fairly accurately, but the user’s share of shared gas depends on how many other transactions share the batch, so we cannot estimate it exactly. However, we can compute an upper bound on the shared gas per user: when no other transactions share the batch, the user bears the full shared gas. This gives an upper bound on the total gas a user might need to pay. To reduce failures caused by price volatility, we can add a safety margin to the estimated gas at this stage, which improves robustness against price swings.

During execution, the gas available to the user is:

$$
AvailableGas = \frac{\text{UserPaidXNY}}{GasPriceByXNY}
$$

- `GasPriceByXNY` is the gas price denominated in $XNY.

If `GasPriceByXNY` is unchanged between the user paying and the transaction executing, then the user’s $XNY payment is sufficient to cover the gas cost. The system settles based on the actual gas consumed; any leftover $XNY is refunded to the user.

### On-Chain AMM-Based Auto-Swap

To settle $XNY into ETH, our gas payment design uses a simple and implementation-friendly approach: **we use an on-chain AMM pool (e.g., Uniswap) both as the price source and as the actual swap venue**.

This choice has several advantages:

- **Fully on-chain, no trusted third party**: All swaps happen on-chain without relying on centralized exchanges or custodians.
- **Controlled engineering complexity**: We avoid adding a separate oracle dependency at the gas payment layer.

```mermaid
graph TD
    subgraph User[User Side]
        Q[Estimate Gas]
        U[Generate Payment Signature]
        S[Send Transaction With Payment]
    end

    subgraph System[Gas Payment System]
        R[Bundler]
        
        subgraph "AMM Pool"
            Pool[Liquidity Pool<br/>$XNY / ETH]
            Pool -- "Dual Roles" --> PriceFeed[Price Source]
        end

        Calc[Cost Calculator]
        TxBuilder[TX builder]
    end

    subgraph Blockchain[Block Chain]
        BC[(Target Chain)]
    end

    Q --> U
    U --> S
    S --> R

    Calc -- "Estimate Gas" --> Q

    R --> Calc
    PriceFeed -- "Fetch Real-Time Data" --> Calc

    Calc --> TxBuilder
    BC -- "Swap<br/>($XNY → ETH)" --> Pool

    TxBuilder --> BC

    style Pool fill:#e1f5fe
    style PriceFeed fill:#f3e5f5
```

### Gas Price Smoothing

Even though we let users slightly overpay gas to absorb normal price volatility, extreme cases can still occur. If the actual gas price at execution diverges too far from the estimate, even an overpayment might not cover the difference, and the transaction may still fail. While this should be rare, it still harms user experience when it happens.

To handle this, we introduce a **gas price smoothing mechanism**.

The $XNY amount a user must pay per transaction is:

$$
EstimatedXNYAmount = Gas \times GasPrice \times ETHPrice / SmoothedXNYPrice
$$

Where:
- `gas` is the gas amount the user is expected to pay.
- `GasPrice` is the gas price denominated in ETH.
- `ETHPrice` is the ETH price, in units of USDT/ETH.
- `SmoothedXNYPrice` is the $XNY price, in units of USDT/$XNY.

**Price smoothing (TWAP)**

To reduce fee spikes caused by short-term volatility, the system smooths the $XNY price. The smoothed price `SmoothedXNYPrice` is computed via a time-weighted average price (TWAP):

$$
SmoothedXNYPrice = \frac{1}{N}\sum_{i=1}^{N} P_i
$$

This formula takes the average of $XNY prices over a time window.

- `Pi` is the $XNY price at a point in time, in USDT/$XNY.

With `SmoothedXNYPrice`, short-term price swings are averaged out, significantly reducing the probability of transaction failure due to transient volatility.

### Gas Buffer Pool

`SmoothedXNYPrice` removes the impact of transient volatility on users, but it can cause the paymaster to receive **insufficient $XNY** to cover its real gas costs.

For example: suppose when estimating the transaction, the $XNY price is 1 USDT/$XNY, but at execution time, the spot price has dropped to 0.5 USDT/$XNY. The system still uses the smoothed price of 1 USDT/$XNY for fee calculation. As a result, the user’s $XNY payment is **not enough** to cover the actual gas cost. The paymaster should not operate at a loss in this scenario; if we still want the transaction to succeed, we need a mechanism to subsidize the missing gas.

The **gas buffer pool** is designed exactly for this purpose. It complements the price smoothing mechanism: when a user’s $XNY payment is insufficient to cover the actual gas consumed, the buffer pool fills the gap so the transaction can still execute successfully.

However, the buffer pool is not infinite. Each time it subsidizes a transaction, its ETH balance decreases. To avoid draining the pool to zero — which would disable the subsidy mechanism — the system introduces a stabilization mechanism. Once the pool balance drifts away from the target range, the system adjusts the user’s gas multiplier `FeeFactor` to pull the pool balance back towards its target.

**Fee adjustment factor**

$$
FeeFactor = clamp\Big(k \times \ln\Big(\frac{F_0}{F}\Big), -fmax, fmax\Big)
$$

Where:
- `F0` is the target buffer pool size.
- `F` is the current buffer pool size.
- `fmax` is the maximum fee adjustment factor.
- `k` is the sensitivity coefficient.

```mermaid
flowchart TD
    Start[User Request Estimating Gas] --> Pool[Get ETH Balance of the Pool<br/>b_pool]
    
    Pool --> Compare{b_pool below the floor of b_expectation ?}
    
    Compare -->|Y: short of ETH| Below[FeeFactor > 1]
    
    Compare -->|N: not short of ETH| CheckAbove{above the ceiling of b_expectation?}
    
    CheckAbove -->|Y: surplus of ETH| Above[FeeFactor < 1]
    
    CheckAbove -->|N: stable| Stable[FeeFactor = 1]
    
    Gas[gas = estimated_gas * FeeFactor]

    Below --> Gas
    Above --> Gas
    Stable --> Gas

    Gas --> End
```

### Mechanism Synergy and End-to-End Flow

The four mechanisms above form a complete gas payment solution:

1. **Gas decomposition**: Split total gas into user-specific and shared parts to ensure fair pricing and cost sharing.
2. **AMM auto-swap**: Use an on-chain AMM pool to convert $XNY → ETH, eliminating the asset mismatch.
3. **Price smoothing (TWAP)**: Smooth $XNY price volatility to protect users from short-term price shocks.
4. **Gas buffer pool + fee adjustment**: Absorb extreme price risk, keep the paymaster at break-even over time, and sustain the service.

**User $XNY payment formula**

$$
XNYNeeded = EstimatedXNYAmount \times FeeFactor
$$

**End-to-end workflow**:

1. **Estimation phase**: The system estimates gas consumption for the user request, fetches the smoothed $XNY price via TWAP, and combines it with the current gas price and ETH price to compute how much $XNY the user should pay. It also calculates the fee adjustment factor based on the buffer pool balance and applies it to the final fee.
2. **User payment**: The user pays the calculated amount of $XNY and authorizes the transaction.
3. **Batch execution**: The bundler collects a batch of user requests, submits them on-chain in a batch, and fronts ETH as gas.
4. **Settlement and risk handling**:
   - If the user’s $XNY payment is enough to cover the actual gas cost, the system settles directly.
   - If $XNY is insufficient due to price movement, the buffer pool subsidizes the shortfall.
   - The paymaster reimburses the bundler’s gas outlay.
   - Changes in the buffer pool balance feed back into the fee adjustment factor, influencing pricing for subsequent transactions.
5. **AMM swap**: The paymaster swaps received $XNY for ETH through the AMM pool to refill the buffer pool or prepare for future gas payments.

These four mechanisms form a closed loop: **gas decomposition ensures fair pricing, AMM swaps handle settlement, price smoothing and the buffer pool protect users, and fee adjustment keeps the system economically stable**. This design delivers a gas payment system that balances user experience with the paymaster’s long-term sustainability.

## Simulation

The figure below shows a simulation of the mechanisms described above:

![twap simulation](../assets/George/gas-payment/twap_simulation.png)

**Top-left: Token Price — Spot vs TWAP**

We can see that while the token’s spot price fluctuates, the TWAP price is relatively stable and smooths gas pricing.

**Bottom-right: Pool Value Breakdown — ETH + Token Value**

This chart tracks the ETH value, $XNY value, and total value in the gas buffer pool.

In the demo implementation, we merged the paymaster and the gas buffer pool into a single component to simplify engineering, without materially affecting our business logic.

Also, to observe how long the gas buffer pool can sustain operations **without** real-time token swaps, we intentionally disabled token swaps in the simulation.

We can see that:

- As transactions execute, the ETH balance in the gas buffer pool gradually decreases — partly because it pays bundlers as a paymaster, and partly because it subsidizes gas fees as a buffer pool.
- The pool accumulates more and more $XNY, but the combined value of $XNY and ETH stays close to the target (1 ETH). This is the effect of the buffer pool’s stabilization mechanism.

## Limitations and Trade-Offs

### Technical Limitations

- **Additional complexity**: Compared to the “user pays their own gas” baseline, this design introduces the paymaster contract, batch execution, and interaction with AMM pools. This increases system complexity and gas consumption.
  - Mitigation: Batch submission amortizes the shared gas cost across many transactions and significantly reduces per-transaction overhead.
- **Latency from batching**: To amortize costs, the bundler tends to wait until it accumulates enough requests before submitting a batch. This introduces a delay between “user signs and submits” and “final on-chain settlement”, forcing a trade-off between real-time execution and cost.
  - Mitigation: The system can configure the batching interval based on network conditions and default to a fixed cycle for all users. It can also offer an “expedited” option for users who want faster execution in exchange for higher fees.

### Risk and Security Considerations

- **Assumed preconditions**: The design assumes that $XNY has sufficient liquidity in mainstream trading venues and that its token economics are sound. The gas payment mechanism cannot fix “a token with no market”; it only optimizes payment UX and the operating model on top of a healthy asset.

Overall, this design makes a deliberate trade-off between **user experience**, **implementability**, and **paymaster sustainability**. We accept additional system complexity and some operational risk to deliver a “no native gas, pay with $XNY only” user experience, while keeping the paymaster’s economics self-consistent.

## Summary

### Core Value

Gas payment mechanisms require not only technical implementation but also sound economic design. By combining **AMM-based auto-swap**, **profit-and-loss balancing and risk management**, and **batch execution**, we can build a gas payment service that is economically self-consistent and provides a solid foundation for gasless user experiences.

### Impact and Outlook

If this gas payment mechanism is successfully deployed, it can unlock many application scenarios. It applies not only to Codatta, but also to protocols like x402 that need gas payment services, and can serve as infrastructure for gasless experiences across the broader Web3 ecosystem.

An extra observation from this work is that the same mechanism can support the x402 **facilitator**. Today, the facilitator submits transactions to the chain for the x402 server but has no way to recover its gas costs — it effectively pays out of pocket, which is not sustainable. If we integrate this gas payment system into the facilitator, its service becomes compensated, which makes the x402 ecosystem more sustainable. This is a direction we plan to explore next.


