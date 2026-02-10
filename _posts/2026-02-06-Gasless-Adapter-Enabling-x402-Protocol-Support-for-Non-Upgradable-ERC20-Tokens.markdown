---
layout: post
title:  "Gasless Adapter: Enabling x402 Protocol Support for Non-Upgradable ERC20 Tokens"
date:   2026-02-06 16:00:00 +0800
categories: [Blockchain]
author: George
status: opinion
image: 
excerpt: "We introduce a Gasless Adapter that gives immutable ERC‑20 tokens like $XNY ERC2612/3009-style gasless capabilities, enabling x402 integration without contract upgrades, new tokens, or asset migration."
---

## Background  

We ran into a very practical issue while integrating x402: **$XNY cannot be used directly as a payment asset in x402**.

As Codatta evolves, more and more of our capabilities will be exposed via APIs: developers will call our endpoints from their own backends or frontends to perform on-chain operations for data contribution and consumption. Ideally, these calls should implicitly handle billing, rather than forcing users into a separate payment flow. This is especially true in the current AI wave: our “customers” are not only humans but also AI agents. Traditional payment flows simply do not work here—we cannot ask an AI agent to use a credit card or scan a QR code to pay.

**x402** is a protocol that embeds the payment process into the HTTP request flow, so that each API call can be paid directly using cryptocurrency. Crypto payments only require private key signatures without complex user operations or device dependencies. On chains like BSC and Base, x402 can support low-latency, high-throughput payments. In this sense, x402 is almost a perfect fit for Codatta’s payment requirements.

However, as we studied the current implementation more deeply, we found that x402 now relies on the **ERC3009** standard to achieve gasless payments. ERC3009 allows users to transfer tokens without holding ETH: a facilitator submits the transaction and pays gas on behalf of the user.

ERC3009 is a relatively new standard. It gives tokens **signature-based transfer** capability, enabling gasless transfers. But in the real world, most deployed ERC20 tokens predate ERC3009 and do not support these modern signing features. There is also **ERC2612**, which appeared earlier and supports gasless `approve` (permit). It is a more mature standard and is theoretically usable for x402 payments, but the current x402 implementation does not yet support it.

For security and stability reasons, **$XNY** uses the classic **ERC-20** standard only, without ERC-2612 or ERC-3009 extensions. This keeps the token contract simple, improves security audit outcomes, and maximizes compatibility with existing exchanges and wallets. The side-effect is—at least at first glance—**$XNY cannot be used for x402 payments**.

Yet we strongly want this to work. On one hand, x402 is critical to Codatta’s business; it is almost our ideal “native crypto billing layer,” and we believe many other projects share this need. On the other hand, $XNY is not unique here: most ERC20 tokens already circulating in the ecosystem do **not** support ERC3009. According to a rough ChatGPT statistic, on Ethereum the share of ERC20 contracts that support ERC3009 is close to 0; slightly more support ERC2612, but still only about 1%–5%.

So this is not a $XNY-specific quirk, but a **general engineering challenge**:  
Can we enable these “legacy ERC20” tokens to use a new payment protocol like x402 **without** changing the token contract or migrating assets? If we can, not only does $XNY benefit, but x402 itself gains a far larger addressable market.

## Design Options

**Option A: Issue a New Token**

The most straightforward idea is to simply issue a new version of $XNY, say **$XNYv2**, that natively supports ERC2612 / ERC3009, and then let everyone swap their old $XNY to the new $XNYv2.

This is easy to implement on-chain, but the main problems are off-chain:

- **Ecosystem fragmentation**: every protocol, product, and wallet that has integrated $XNY must add support for a new contract address.  
- **High liquidity migration cost**: trading pairs, market making, liquidity mining, etc. all must migrate.  
- **Very poor user experience**: users have to understand “why there is a $XNYv2” and manually participate in the migration.

These are not pure technical issues; they are systemic problems. For a token that already has some circulation and integrated partners, “re-issuing” is almost always the last resort.

**Option B: Upgrade / Proxy**

If $XNY had originally been deployed using an upgradeable pattern (such as a proxy), this would be a trivial question: we could simply add ERC2612 / ERC3009 logic in the implementation contract.

Unfortunately, **$XNY is not upgradeable**.

This means:

- There is no proxy that can be redirected to a new logic contract.  
- There is no reserved upgrade entry point we can call.

So this path is ruled out for $XNY specifically. From another angle, though, “immutable once deployed” is one of the core promises of Web3 protocols: users can rely on the contract behavior not being unilaterally changed by the project team over time. This immutability is itself a feature.

**Option C: Wrapper Token ($wXNY)**

The third idea is the pattern everyone knows: **wrap the token**.

Roughly:

- The user deposits $XNY into a contract.  
- The contract mints the same amount of **$wXNY** to the user.  
- $wXNY implements ERC2612 / ERC3009 and is used as the payment asset in x402.

This is technically sound and very common in DeFi (wETH is the canonical example). But for our scenario, it introduces a new set of problems:

- **Dual-asset system**: the ecosystem now has both $XNY and $wXNY, with two sets of balances and addresses.  
- **UI complexity**: the frontend must guide users to wrap $XNY into $wXNY before use.  
- **Liquidity split**: some liquidity stays in $XNY, some moves to $wXNY.  
- **Higher integration cost**: any integration that wants “$XNY payments” must now support $wXNY instead.

Given our goal of “using $XNY as the payment asset in x402,” this extra cognitive and integration overhead is hard to accept. So we ultimately did not choose the wrapper approach.

**Option D: Gasless Adapter**

If issuing a new token, upgrading the contract, or wrapping the token are all unsatisfying, is there a way to “add **capabilities**” to the existing asset without changing the asset itself or creating a second one?

The intuitive idea is: can we build a standalone contract that **exposes an ERC20 interface with ERC2612 / ERC3009 support** externally, and that other protocols (like x402) interact with as if it were a modern token—but internally, it simply proxies all reads and writes down to the underlying $XNY?

Conceptually:

- **Externally**: it behaves like a standard ERC20 + ERC2612 + ERC3009 token.  
- **Internally**: all `transferFrom`, `balanceOf`, `allowance`, etc. calls are forwarded to the underlying $XNY.  
- **From x402’s perspective**: this is a token that natively supports ERC2612 / ERC3009.  
- **From the user’s perspective**: they always hold and use $XNY; there is no second asset.

This started out as a “can we even do this?” hypothesis. As we pushed through security, compatibility, and integration considerations, it turned into the final architecture we adopted: the **Gasless Adapter** pattern.

## Comparison of Integration Approaches

| Dimension / Option                           | A. Re-issue New Token | B. Upgrade / Proxy  | C. Wrapper (wXNY)      | D. Gasless Adapter        |
|----------------------------------------------|------------------------|---------------------|------------------------|---------------------------|
| Keep original token contract unchanged       | ❌ New contract        | ❌ Upgrade logic    | ✅                     | ✅                        |
| No asset migration                           | ❌ Requires migration  | ✅                  | ❌ Requires deposit/withdraw | ✅                   |
| No new token asset introduced                | ❌ Introduce XNYv2     | ✅                  | ❌ wXNY                | ✅                        |
| User mental model cost                       | High: understand new token | Low            | Medium: understand wrapping | Low: always see $XNY |
| Migration cost for existing integrators      | High: all integrations must switch contract address | Low: adapt to upgrade | High: integrate wXNY     | Low: just add Adapter    |
| Support for x402-required features (3009/2612) | ✅ Strong             | ✅ Strong           | ✅ Strong              | ✅ Strong                 |
| Alignment with “immutability” ethos          | Low: rewrite from scratch | Medium: relies on Proxy | High: keep original contract | High: keep original contract |
| Credibility / trust model                    | Medium: mainly relies on operational guarantees | Low: upgradable contract risk | High: as long as wrapper is safe | High: as long as adapter is safe |

As the matrix shows, all four options can technically satisfy x402’s requirements around ERC2612/3009. The real differences lie in how invasive they are to the asset layer, how much cognitive and integration overhead they impose, and how well they respect the “immutable once deployed” ethos. Re-issuing and proxy upgrades both modify the asset itself; wrapping avoids that but introduces a second asset. The Gasless Adapter is the only approach that keeps $XNY untouched while still providing the required capabilities and future extensibility, which is why we ultimately chose it.

## Core Design of the Gasless Adapter

![gasless adapter](../assets/George/x402/gasless%20adapter.png)

From a design perspective, we want the Gasless Adapter to act as a **capability layer**: it exposes an ERC20 interface (with ERC2612 / ERC3009) upward, and safely proxies all state and operations into the underlying token contract.

**Externally: an Interface**

From the outside, the Gasless Adapter looks like a “fully capable” ERC20:

- Implements the full ERC20 interface: `balanceOf`, `transfer`, `transferFrom`, `approve`, `allowance`, etc.  
- Implements **[ERC2612](https://github.com/codatta/erc20-gasless-adapter/blob/main/src/ERC2612.sol) (permit)**: signature-based authorization (gasless `approve`).  
- Implements **[ERC3009](https://github.com/codatta/erc20-gasless-adapter/blob/main/src/ERC3009.sol) (transferWithAuthorization)**: signature-based transfers (gasless `transfer`).  

To any integrator (x402, wallets, contracts), the Gasless Adapter is just a “modern” ERC20: it can `approve`, it supports `permit`, and it supports `transferWithAuthorization`.

**Internally: a Proxy**

Internally, the Gasless Adapter only proxies token asset management:

- The Gasless Adapter itself is **not** a token; it does not mint or burn any assets.  
- It does **not** hold user funds; there is no “deposit–mint” wrapping process.  
- It maintains only minimal internal state: signature nonces, authorization records, and similar metadata.  
- All real balances and fund movements still happen in the underlying token contract.

A simple analogy:

- The **Token** is like a bank branch that manages user accounts but only supports in-person services.  
- The **Adapter** is like an extended check-clearing service: it validates signatures and then uses the authority granted by the token to move funds.

This gives us two immediate benefits:

- **No token contract changes**: all new capabilities live in the Gasless Adapter; the token contract remains untouched, so existing integrations and asset distribution are unaffected.  
- **The Gasless Adapter is replaceable**: if a better design emerges in the future, we can abandon the old adapter and deploy a new one without impacting the token itself or its ecosystem position.

**From the Protocol’s Perspective**

From the perspective of an upper-level protocol such as x402:

- It only needs to change `token = Token` to `token = Adapter`.  
- The calling pattern is identical: `balanceOf`, `transferFrom`, `allowance`, `permit`, `transferWithAuthorization`, etc. are used as in any ERC20 with ERC2612 / ERC3009 support.  
- The Gasless Adapter internally translates these calls into `transferFrom`, `balanceOf`, and other low-level calls against the underlying token.

## Interaction Flows

We illustrate how the Gasless Adapter works through three typical scenarios.

**Scenario 1: Regular Transfers**

Transfer  
![gasless adapter](../assets/George/x402/interact-transfer.png)

1. The User calls `approve(Adapter, Amount)` on the Token contract to authorize the Adapter.  
2. The User calls `transfer(Receiver, Amount)` on the Adapter to transfer tokens to `Receiver`.

The behavior is equivalent to calling `transfer(Receiver, Amount)` directly on the Token; the Adapter is a transparent proxy.

TransferFrom  
![gasless adapter](../assets/George/x402/interact-transferfrom.png)

1. The User calls `approve(Adapter, Amount)` on the Token to authorize the Adapter.  
2. The User calls `approve(Spender, Amount)` on the Adapter to authorize the Spender who will spend on their behalf.  
3. The Spender calls `transferFrom(User, Receiver, Amount)` on the Adapter. The Adapter then calls `transferFrom(User, Receiver, Amount)` on the Token to execute the actual transfer.

Again, the behavior is equivalent to using the Token directly; the Adapter is just a transparent proxy layer.

**Scenario 2: ERC3009 Gasless Transfers**

![gasless adapter](../assets/George/x402/interact-erc3009.png)

1. The User calls `approve(Adapter, Amount)` on the Token to authorize the Adapter.  
2. The User signs a `transferWithAuthorization` message.  
3. The User sends this signature to a **Relayer**, which is the service that submits the transaction and pays gas.  
4. The Relayer calls `transferWithAuthorization()` on the Adapter and pays gas.  
5. The Adapter validates the signature (including nonce, expiry, and other constraints), then calls `transferFrom` on the Token to perform the real transfer.

The User does not need to hold ETH; the Relayer pays the gas. This is exactly the gasless payment capability x402 requires.

**Scenario 3: x402 Protocol Integration**

![gasless adapter](../assets/George/x402/interact-x402.png)

x402 server configures the **Gasless Adapter** address as the payment token.

1. The x402 client obtains payment parameters.  
2. The User calls `approve(Adapter, Amount)` on the Token to authorize the Adapter.  
3. The User calls `balanceOf(User)` on the Adapter to query and verify their balance (internally proxied to the Token).  
4. The User signs a `transferWithAuthorization` payload.  
5. The User sends an HTTP request to the x402 server.  
6. The x402 server passes payment information to the x402 facilitator.  
7. The x402 facilitator calls `transferWithAuthorization(...)` on the Adapter, using ERC3009-style signed transfers.  
8. The Adapter verifies the transaction and completes the underlying transfer.

Key points:

- x402 only sees a standard ERC20 token that supports ERC3009.  
- The protocol logic remains unchanged; no special-case logic is required.  
- The underlying asset is always the original Token; the user continues to hold the native token.

## Advantages of the Gasless Adapter

The Gasless Adapter has several advantages:

**Core Advantages**

- **No change to the original asset**: the underlying token stays exactly as it is; users still hold the native asset.  
- **No new token**: no dual-asset system, no split liquidity.  
- **Compatible with any ERC20**: a Gasless Adapter can be deployed for any ERC20 token.  
- **Reusable infrastructure**: implement once, reuse across many projects and protocols.

**Cost Advantages**

- **Low deployment cost**: only the Gasless Adapter contract needs to be deployed.  
- **Zero migration cost**: users do not need to migrate assets.  
- **Minimal cognitive overhead**: from the user’s perspective, the experience matches that of using a normal ERC20.

**Extensibility**

Fundamentally, the Gasless Adapter is a **capability layer** for ERC20, and can be used for more than x402:

- **Meta-transactions**  
- **Gas abstraction**  
- **Signature-based authorization systems**  
- **Batch operations** (batched transfers and approvals)  
- **Extended protocol interfaces** for future standards

This makes the Gasless Adapter a basic building block that can keep evolving.

## Limitations and Trade-Offs

Every engineering solution has trade-offs, and the Gasless Adapter is no exception.

**Technical Limitations**

- **Extra approval step**: users must `approve` the Gasless Adapter on the underlying token, which itself requires an ETH-funded transaction.  
- **Higher gas cost**: compared with calling the token directly, the Adapter adds an extra proxy layer, increasing gas by roughly 5–10% in typical cases.  
- **Proxied reads**: queries like `balanceOf` and `allowance` require one extra contract call, although the results match the underlying token’s state.  
- **Separate allowance state**: the Gasless Adapter maintains its own `allowance` mappings, distinct from the token’s allowance. This is because ERC2612-based gasless approvals cannot modify the underlying token’s allowance. Methods like `approve` and `transferFrom` that rely on `allowance` use the Adapter’s local allowance state.

**Security Considerations**

- **Critical dependency**: the Gasless Adapter becomes a key contract. Bugs may affect all its users. The code must remain minimal and focused on signature validation and proxy logic, avoiding unrelated business complexity, and should be paired with rigorous audits and formal verification.  
- **New attack surface**: signature verification, nonce handling, and replay protection must be implemented carefully. If a risk is discovered, users can revoke `approve` on the Adapter to cut off its authority quickly. The Adapter can also expose a controlled “shutdown” capability, so an administrator can disable it if a severe issue arises.

**Deployment Considerations**

- A separate Gasless Adapter must be deployed for each underlying token (or via a factory pattern).  
- The contract should go through strict security audits.  
- We recommend making the Adapter contract **non-upgradeable** to eliminate upgrade-related risks.

## Reference Implementation

We have open-sourced the full contract code, deployment scripts, and tests on GitHub:

- Repository: [`codatta/erc20-gasless-adapter`](https://github.com/codatta/erc20-gasless-adapter)

Below is a short reading guide to the key implementation points to help you quickly understand the overall design.

**Core Interface Implementations**

- **ERC20 interface**: a complete implementation of `balanceOf`, `transfer`, `transferFrom`, `approve`, `allowance`, etc., with some methods delegating internally to the underlying ERC20.  
- **ERC2612 (permit)**: implements `permit` for signature-based, gasless approvals.  
- **ERC3009 (transferWithAuthorization)**: implements `transferWithAuthorization` and `receiveWithAuthorization` for signature-based, gasless transfers.

**Key Implementation Details**

- **Permit verification logic**: uses EIP-712 structured data signing, strictly validating the signer, authorization parameters, and expiry.  
- **Nonce design**: maintains independent nonces for each user to prevent reuse of the same signature.  
- **Replay protection**: incorporates nonce, chain ID, expiry, and other parameters into the signing domain to prevent cross-chain and cross-environment replay.  
- **Allowance model**: the Adapter maintains its own `allowance` mappings, separate from the underlying token’s allowances, to avoid state confusion.  
- **Safety checks**: verifies signature validity, nonce consumption, and authorized amounts. Any violation causes a revert.

**Quick Deployment**

In addition to the full implementation, we provide scripts for **one-click deployment** of a Gasless Adapter, so developers can stand up an adapter for a given token with a single command.

## Conclusion: Adding New Capabilities to Legacy Assets

On the surface, this work solves a very specific problem: enabling $XNY to integrate with x402. In practice, it reveals a more general engineering pattern: **use a capability layer to adapt legacy systems instead of forcing upgrades to the systems themselves**. We do not require users to migrate assets, nor do we ask protocols to degrade their experience for backward compatibility with legacy tokens. Instead, an Adapter translates an “old” ERC20 that cannot speak ERC2612 / ERC3009 into a token that can.

There is a long-standing tension in blockchain systems: **assets are stable and long-lived, while protocols evolve continuously**. If every protocol upgrade forces users to change assets, we end up with fragmented liquidity and fractured ecosystems. If we stop innovating protocols for the sake of existing assets, the system stagnates. The Gasless Adapter offers a middle path: introduce an evolvable capability layer between assets and protocols, so legacy assets can join new protocol waves without touching their core contracts.

In this sense, the Gasless Adapter is not just one integration project between $XNY and x402, but a pattern that can be reused in many contexts: respect the immutability of deployed contracts, and concentrate change in adapter layers that are easier to replace. As more protocols adopt `permit`, meta-transactions, and gas abstraction, we expect this “capability layer for legacy assets” pattern to become increasingly common.


