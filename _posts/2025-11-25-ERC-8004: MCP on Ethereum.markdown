---
layout: post
title:  "ERC-8004: MCP on Ethereum"
date:   2025-11-25 13:00:00 +0800
categories: [Other]
author: Jason404
status: opinion
image: /assets/Jason404/ERC-8004 MCP on Ethereum.png
tags: [Web3,AI, ERC-8004]
excerpt: "- it’s closer to Claude’s MCP (Model Context Protocol)** or Google’s A2A (Agent to Agent) protocol.
- Think of it as a resume template for AI agents that states who I am, what I can do, how I do it, and how to contact me. And the blockchain is like a job board where everyone posts their resumes; supply and demand can browse and choose freely"
---
<img width="1024" height="1024" alt="image" src="/assets/Jason404/ERC-8004 MCP on Ethereum.png" />

## **TL;DR**

- Although `ERC-8004` is called “Trustless Agents,” it’s neither a large language model (LLM) nor an AI agent. Don’t expect it to chat like ChatGPT or code like Cursor.
- If you must draw an analogy, it’s closer to Claude’s **MCP (Model Context Protocol)** or Google’s **A2A (Agent to Agent)** protocol.
- Think of it as a **resume template for AI agents** that states who I am, what I can do, how I do it, and how to contact me. And the blockchain is like a **job board** where everyone posts their resumes; supply and demand can browse and choose freely.
- As for whether the resume information is perfectly truthful—no one can guarantee that. The protocol itself can’t solve that either.
- Like almost all ERC, it primarily targets **developers**, not end-users. For ordinary users, just think of it as “**the Ethereum version of MCP**”. **The Ethereum version**” doesn’t mean “it merely runs on Ethereum.” This is Because it‘s a standard co-authored by the **Ethereum Foundation** with ecosystem veterans like **MetaMask** and **Coinbase**. Don’t assume such “official backing” is just hype. It doesn’t guarantee success—but each organization could bring a vast user base, which is the real significance.
- The value of a protocol standard doesn’t hinge on how advanced the tech is or how fancy the architecture looks—it hinges on **mass adoption**. The more users, the richer the ecosystem, the more meaningful the protocol. In Web2, we say *traffic is king,* in Web3, we say *consensus is the currency.* If you’ve lived through the dominance of Web2 platforms or the meme frenzies of Web3, you already know what that means.
- All in all, ERC-8004 is a good start. If you’re a **builder**—whether your focus is AI or Web3—this is worth watching.

## **What is ERC?**

To understand “ERC” ,we should first understand **EIP**—**Ethereum Improvement Proposal**.

Simply put, if you think something in Ethereum feels off or could be better, go ahead and propose a fix. Don’t just point out the problem—bring the solution, too. After all, talk is cheap, and code speaks louder.

Sure, whether it ever gets approved—or how long that might take—is a whole different story. The important thing is: proposing is free for everyone.

Famous examples include **ERC-20**, **ERC-721**, and **EIP-1559**—all proposed, accepted, and implemented.

You might notice some are “ERC” while others are “EIP”. Not a typo—**ERC is a subset of EIP**.

There’s always room for improvement in Ethereum — no offense, that doesn’t mean it’s not good enough; it’s just how systems evolve.

And since Ethereum was the first smart-contract chain with the biggest user base and most active ecosystem, it naturally draws the most proposals.

To keep things tidy, EIPs are sorted into six buckets:**Core, Networking, Interface, ERC, Meta, Informational**  (check the official site for details, we won’t go into them here.).

The **application-level** proposals fall under ERC, which stands for“**Ethereum Request for Comment**”.
Don’t ask me who came up with that — it tells you absolutely nothing about what it exactly use for.
Anyway, what’s done is done. Let’s move on.

What means **application-level** proposals?

In plain terms, these are technical proposals which involve code but do **not** changing Ethereum’s underlying paradigm.

Instead, they define how to leverage the existing infrastructure and architecture of Ethereum to support new applications.

Why emphasize “involve code”? 

Because proposals focused purely on governance or documentation also go through the EIP process, but they typically fall under the **Meta** or **Informational** categories.

If **Core**, **Networking**, and **Interface** are Ethereum’s constitution, then ERC are its company policies — the operational rules for apps running on top of it.
If you like a company’s policy, you can adopt it; if not, you can ignore it or create your own.
But if it’s the constitution that bothers you, you still have to live by it — unless you decide to leave the jurisdiction.

To put it more concretely, we can look at whether implementing an EIP would cause a hard fork on Ethereum.

For example, `ERC-20` and `ERC-721` are token standards used by application developers. No matter how you experiment with them, they don’t affect the Ethereum network itself — with or without these standards, Ethereum remains the same Ethereum.

In contrast, `EIP-1559` deals with the fee-calculation and pricing mechanism for Ethereum gas. It directly impacts the underlying network: miners, developers, and users are all affected. Implementing or not implementing this standard effectively results in two different chains.

Because **ERC** usually don’t affect the underlying network, **acceptance** doesn’t strictly determine **usability**. 

For instance, ERC-721 had been used widely **before** it formalized. Conversely, **Core** and **Networking** proposals need formal acceptance before deployment.

## **Overview of ERC-8004**

By now, it should be clear that `ERC-8004` is an **application-level proposal**— as mentioned before, it’s already available for anyone to use, even though it hasn’t been officially finalized yet.

Generally, an EIP goes through four stages: **Draft**, **Review**, **Last Call**, and **Final**.

The **Draft** stage is where ideas are proposed. There are practically no restrictions — you can suggest whatever you think makes sense. After all, proposing is your right; whether others agree is another story.

Once it enters the **Review** stage, things get more serious — the community begins formal discussions and evaluations.

After multiple rounds of review and back-and-forth, if there are no major issues left, the proposer can move it to **Last Call** for final consideration.

If it passes this stage, it becomes **Final**, meaning the proposal is accepted as an official standard and can be implemented.

Not all proposals reach every stage, many get filtered out after Draft.

Now that the context is clear, let’s introduce today’s protagonist: `ERC-8004`.

Firstly start with the official description.

<img width="2048" height="422" alt="image" src="/assets/Jason404/ERC-8004.png" />


Let me put that in plain terms:

<aside>
💡

`ERC-8004` is a proposal jointly introduced by the Ethereum Foundation, Coinbase, and MetaMask. It defines a resume template for Agents, helping them clearly communicate who they are, what they can do, how they do it, how their work is validated, and how to contract them.

If everyone — sorry, every Agent — builds their “resume” following this template, the format becomes unified, communication costs drop, and interoperation becomes more convenient. As a result, Agents can be found and used more easily — all of which helps boost the Agent economy.

In essence, this is a win–win standard for both sides of the market. And while it’s formally a resume template for “Agents,” in reality, it can be used by anyone — even a human or a tool like a calculator.

As of November 6, 2025, `ERC-8004` is in the **Review** stage. This means everything we describe here reflects its current state — things may still evolve in the future.

So, Let’s stay tuned to how it evolves.

</aside>

## **ERC-8004 Architecture**

As mentioned earlier, `ERC-8004` is essentially a **resume template** — a way for an Agent to tell the world who they are, what they can do, How to verify their work, and how to be contacted.

This template is organized into three main sections, officially referred to as the `Identity Registry`, `Reputation Registry`, and `Validation Registry`.

Anyone who’s ever looked for a job knows the basics of a resume — you need to include the essentials: your name, your field, your key skills, and of course, your contact info. After all, if someone wants to hire you but can’t reach you, that would be awkward.

That’s what the `Identity Registry` is all about.

Of course, companies aren’t all pushovers. Sometimes they won’t just take your word for it — they’ll want a recommendation from someone reputable, or even run a background check. They might call your previous employer, ask about your performance, or see what your ex has to say about you. That’s the `Reputation Registry`.

And even if you ace the interview and land the offer, don’t celebrate too soon — there’s often a probation period waiting for you. During that time, the company assigns you real tasks and evaluates your performance before making a final decision.

This brings us to the `Validation Registry` — what tasks are assigned, who verifies the results, and what standards are used for evaluation.

So, as a fellow wage slave — oh wait, I mean a working Agent — when you’re putting together your “resume,” here’s what to keep in mind:

- Basic info is a must. In other words, make sure your `Identity Registry` is filled out. But if it only includes the basics, your resume will look ordinary among thousands of others. You’ll need a few extra tricks to stand out.
- Get some solid recommendations. Yes, you heard that right — even in the Agent world, connections matter. And if you’ve parted ways with your previous boss (or, well, your “ex”), make sure it’s on good terms — you don’t want any surprises during a background check. Keep your `Reputation Registry` as clean and impressive as possible.
- If you lack money or connections, play it humble. Aim for a trial run, and during that period, prove yourself with real results. Make your trial report — your `Validation Registry` — shine.

Sounds familiar, doesn’t it? A perfectly reasonable career path for any hard-working Agent destined to make it in life.

If you’re just a curious observer wanting a quick idea of what `ERC-8004` is about, you can stop here — this much is enough for bragging rights at the next crypto meetup. What follows dives into some technical details that might cost you a few brain cells, so read on at your own risk.

But if you’re a new developer hoping to learn more, or perhaps a future employer planning to hire Agents for your projects, keep reading — the next section will give you a closer look.

And if you’re a seasoned developer… sorry for wasting your time. You shouldn’t even be here — just go read the official doc.

Alright then, back to business — let’s break down these three **registries** one by one.

## **Identity Registry**

As the “basic resume” for a modern, fashion-forward AI Agent, the `Identity Registry` might actually look a little… well, less fashionable when viewed purely in terms of format.

At its core, the `Identity Registry` is simply an implementation built on top of the `ERC-721` standard — yes, that `ERC-721`, the one behind the “NFT” we all know.

Which means, in a way, CryptoPunks, BAYC, Axie Infinity, and Pudgy Penguins are all its half-siblings.

Since it’s built on top of `ERC-721`, its structure follows the same pattern. In the smart contract, it mainly stores three pieces of information: `owner`, `tokenId`, and `URI`.

If this is your first time seeing it, you’re probably confused — none of this looks like anything meaningful at first glance.

`owner` is easy enough to understand: it’s whoever owns this Agent. `tokenId` is also guessable — most likely the Agent’s unique identifier, *kind of like how “007” is James Bond’s iconic number.*

But what on earth is this `URI`? And honestly, just from these three fields, you still have no idea what kind of Agent this even is.

Don’t worry — the secret lies inside the `URI`.

`URI` stands for Uniform Resource Identifier. But don’t get lost in the terminology — in simple terms, you can think of it as a hyperlink that points to a file. That file is where the real details of this `ERC-721` instance——that is, the Agent in this context — actually live.

The file typically looks something like this:

```json
{
"type": "https://eips.ethereum.org/EIPS/eip-8004#registration-v1",
"name": "myAgentName",
"description": "A natural language description of the Agent, which MAY include what it does, how it works, pricing, and interaction methods",
"image": "https://example.com/agentimage.png",
"endpoints": [
{
"name": "A2A",
"endpoint": "https://agent.example/.well-known/agent-card.json",
"version": "0.3.0"
},
{
"name": "MCP",
"endpoint": "https://mcp.agent.eth/",
"capabilities": {}, // OPTIONAL, as per MCP spec
"version": "2025-06-18"
},
{
"name": "OASF",
"endpoint": "ipfs://{cid}",
"version": "0.7" // https://github.com/agntcy/oasf/tree/v0.7.0
},
{
"name": "ENS",
"endpoint": "vitalik.eth",
"version": "v1"
},
{
"name": "DID",
"endpoint": "did:method:foobar",
"version": "v1"
},
{
"name": "agentWallet",
"endpoint": "eip155:1:0x742d35Cc6634C0532925a3b844Bc9e7595f0bEb7"
}
],
"registrations": [
{
"agentId": 22,
"agentRegistry": "eip155:1:{identityRegistry}"
}
],
"supportedTrust": [
"reputation",
"crypto-economic",
"tee-attestation"
]
}
```

We can see that there are seven main fields in the file:

`type`, `name`, `description`, `image`, `endpoints`, `registrations`, and `supportedTrust`.

Among them, `type`, `name`, `description`, and `image` come from the `ERC-721` standard. Since `ERC-8004` is built on top of `ERC-721`, it’s no surprise that these fields show up here.

Their meanings are fairly straightforward:

- `type` specifies the schema or spec this file follows — in our case, always `ERC-8004`.
- `name` is the Agent’s name.
- `description` usually explains what the Agent is or does.
- `image` is typically used for the Agent’s logo.

As for what name you pick, how you describe your Agent, or what logo you choose — that’s completely up to the owner’s creative freedom.

If this were just a PFP NFT or a meme coin, these fields would be more than enough.

But for an **AI Agent**, of course, they’re nowhere near sufficient.

That’s where `endpoints`**,** `registrations`**,** and `supportedTrust` come in — fields that are *not* part of standard ERC-721, added specifically for Agents.

`endpoints` describes what the Agent can do and how to interact with it. `ERC-8004` intentionally does not impose any strict standard here. And honestly, that makes sense: AI evolves too fast, Agents differ wildly in capability, and their interaction patterns are far from uniform. Trying to enforce a one-size-fits-all top-down schema would be unrealistic.

Personally, I don’t think this is “lazy design” at all. This space needs **bottom-up emergence**, not rigid control. In the early stages, whoever designs a simple, clean, easy-to-understand endpoint structure will naturally be copied, and once enough people copy it, **a de-facto standard emerges**. Forcing it prematurely would only slow things down.

The code above shows some example endpoint formats, but they’re really just references. In practice, each Agent will define its endpoints according to how it actually works.

`registrations` contains the Agent’s identity identifier — you can think of it as the Agent’s globally unique identifier.

It’s not something the owner can arbitrarily define. In fact, the moment an Agent is initialized as an `ERC-8004` **instance**, its identifier is already fixed.

This identifier is encoded from the following four components ,that is straight from the spec:

- **namespace:** always eip155 for EVM chains
- **chainId:** the blockchain network identifier
- **identityRegistry:** the address where the ERC-721 registry contract is deployed
- **agentId:** the ERC-721 tokenId assigned incrementally by the registry

Let me break this down:

- `namespace` is always eip155.
    
    This simply indicates the contract lives on an EVM chain.
    
    And if you’re wondering “What if it’s not an EVM chain?” — well… then it wouldn’t be an **ERC** standard, would it? ERCs exist for the EVM ecosystem.
    
- `chainId` is the numeric ID of the chain where the ERC-8004 instance is deployed.
    
    Once deployed, this value is fixed.
    
    For example, Ethereum mainnet is **1**, BSC is **56**, and so on.
    
- `identityRegistry` is the contract address of your ERC-8004 registry deployment.
    
    Once deployed, it doesn’t change.
    
- `agentId` is simply the `tokenId` we discussed earlier — same thing, just wearing a different hat.

So as you can see:

once an Agent completes its on-chain ERC-8004 instantiation, its “identity identifier” is already fully determined.

Because of this, the value of the`registrations` field in the file referenced by the `URI` must match the Agent’s actual on-chain identity.

If it doesn’t, the Agent should reasonably be considered suspicious.

`supportedTrust` ties directly into the later sections on the `Reputation Registry` and `Validation Registry`.

As mentioned earlier, this is the part where the Agent tells the world **what mechanisms can be used to increase the credibility and trustworthiness of its resume information**.

Of course, if you’re a “nobody” Agent — no recommendations, no willingness to go through a trial period — you can leave this field empty.

Just don’t complain if nobody hires you. At that point, your fate lies in the invisible hand of the marketplace.

After all, think about online shopping:

if a product or a store has **no past reviews** and **doesn’t offer returns**, no matter how fancy the listing looks, you’re probably not clicking “Buy Now.”

We’ll dig deeper into this when we get to the `Reputation Registry`and `Validation Registry` — stay tuned for that callback.

Even though we’ve said multiple times that the basic fields are “enough,” technology evolves fast, who knows what new features an Agent might need to expose in the future?

And different Agents may want to show off their own quirks or extra capabilities.

So the `Identity Registry` thoughtfully leaves optional space for this:

a field called `metadata`, which does *not* exist in the standard ERC-721.

This `metadata`  is simply a set of on-chain **key–value pairs**.

It’s completely optional, and the spec imposes no rules on how you should use it.

Decorate it however you want.

Right now it may look like an idle, extra field with no obvious purpose, but honestly, I’m quite excited about it.

The crypto community has a history of turning trivial features into magic —

remember how Bitcoin’s plain old `OP_RETURN` suddenly became the birthplace of inscriptions?

## **Reputation Registry**

The `Reputation Registry` can be viewed as the Agent’s review section — very much like the comment section you see on e-commerce platforms, like this below.

<img width="1318" height="1364" alt="image" src="/assets/Jason404/Review.png" />


A score, a block of text, maybe a few images or even a video if someone is feeling extra enthusiastic — familiar, right?

See? The world of Agents really isn’t that different from the world of shopaholics leaving reviews online.

In the `Reputation Registry` smart contract, there’s a set of methods and fields that together form the entire feedback system.
Let’s look at the key ones.

The first one is a method:

```latex
**function** giveFeedback(uint256 agentId, uint8 score, bytes32 tag1, bytes32 tag2, string calldata fileuri, bytes32 calldata filehash, bytes memory feedbackAuth) external
```

It’s not hard to guess what this function does — it’s quite literally for leaving feedback on an Agent.

Let’s break down the key parameters.

- `agentId` is the Agent you’re reviewing. You really don’t want to mess this up.
    
    As we mentioned earlier, to uniquely identify an Agent, you actually need more than just `agentId` — you also need `namespace`, `chainId`, and `identityRegistry`.
    
    So where did those go?
    
    Good question — and it means you’re paying attention.
    
    In practice, when you call giveFeedback, the chain you’re on (`namespace` + `chainId`) and the contract address you’re interacting with (`identityRegistry`) are already known from context.
    
    That’s why passing only `agentId` is enough to precisely target a specific Agent.
    
- `score` couldn’t be more straightforward — it’s the rating given by the user.
    
    The biggest difference from e-commerce platforms is that it’s not a 5-star system, but a percentage: from 0 to 100.
    
- `tag1` and `tag2` we can mostly ignore for now. They look like some kind of tags — likely keywords or labels used for categorization or summarization.
- `fileuri` works just like the `URI` we saw in the `Identity Registry`.
    
    It points to a file that contains the full content of the review.
    
    As we said before, some enthusiastic users might leave long, image-heavy reviews — and storing all of that directly on-chain (especially on Ethereum mainnet) would be wildly expensive.
    
    So the content itself lives off-chain, and `fileuri` tells you where to fetch it.
    

And that raises an important question:

if the review file is off-chain, doesn’t that mean the reviewer can change it anytime they want?

That would indeed be a serious problem — which is exactly why we have `filehash`.

When the feedback is created, the hash of the file pointed to by `fileuri` is also computed and stored on-chain as `filehash`.

You can think of it as a fingerprint.

If the file is ever modified in the future — even by a single punctuation mark — its hash will no longer match the on-chain `filehash`.

Fingerprint mismatch means something’s off.

In other words, this is a gentle reminder:

**just because the data is off-chain doesn’t mean it’s a lawless zone.**

**Tampering with evidence won’t go unnoticed.**

At first glance, this already looks pretty solid — but a sharp reader like you has probably already spotted a problem:

**Can anyone leave a review? What if a competitor decides to spam you with bad ratings?**

That’s where the `feedbackAuth` field comes in.

In short, it means you can’t just review an Agent as you wish — you need the Agent owner’s permission first.

This authorization is essentially a signature generated by the Agent’s owner, and the signed authorization blob becomes the `feedbackAuth`.

The signing and verification mechanism is actually quite common in cryptography; if you’re curious, you can check the spec for the exact details.

You might now be wondering:

Sure, this prevents malicious negative reviews — but doesn’t it also allow an Agent to block legitimate ones?

If I know you don’t like me, I just won’t authorize you. Problem solved… right?

This is indeed a potential concern.

However, if you look closely at how `feedbackAuth` works, you’ll notice something important: **the reviewer doesn’t need to provide the actual review content when requesting authorization.**

In other words, as an Agent owner, when you authorize someone to review you, you have **no idea** what they’re actually going to write.

Even if they sweet-talk you into granting authorization, you still can’t control what they submit afterward.

In a way, this effectively prevents the classic “delete bad reviews” scenario.

As for self-generated positive reviews… well, there really isn’t a perfect technical solution for that.

At the end of the day, that’s simply how things work in the real world — you can only rely on readers to judge each review on its own merits.

Now that you understand how the `giveFeedback` method works and what its parameters mean, you should have a pretty good grasp of how the entire `Reputation Registry` mechanism operates.

Of course, there are other functions as well — such as `revokeFeedback` (to retract a review), `readFeedback` (to read a review), and so on.

But all of them are built around the same core logic we just discussed, mainly to make interacting with the `Reputation Registry` easier.

I won’t list them one by one here — if you’re curious, feel free to check the spec directly.

Finally, time for a little callback:

remember the `supportedTrust` field we mentioned earlier?

If you’re confident in yourself and willing to authorize people to review you openly, then you can include "reputation" as one of the values in your supportedTrust list, like:

```json
 "supportedTrust": [
    "reputation",
  ]
```

## **Validation Registry**

The `Validation Registry` deals with how an Agent’s work is evaluated — what the expected deliverables are, who verifies them, how the verification is done, and what the acceptance criteria look like.

At its core, the `Validation Registry` follows a simple principle: **talk is cheap; show me the work.**

No amount of fancy claims matters — if you’re an Agent, you prove yourself by doing the job.

Think of it like this: I’m the user — effectively the interviewer — and you’re the Agent. I assign you a task, you need to complete it.

To prevent me from free-riding on your work, or you from cutting corners, we bring in neutral third parties — Validators — whom both sides trust.

Using the method and criteria we agreed upon in advance, they verify whether you’ve truly delivered what you promised.

If you pass, everyone wins: I get the actual output I needed, and you earn a new line of “proven work experience” on your resume.

Everything is recorded on-chain, publicly auditable — and frankly, that level of transparency carries way more weight than a simple positive review.

We’ll continue by looking at some key methods and fields in the `Validation Registry` to understand how the whole mechanism works.

Inside the `Validation Registry`, there are two main functions: `validationRequest` and `validationResponse`.

Their purpose is pretty much spelled out in their names.

`validationRequest` is used by the Agent. Once you, as an Agent, finish a task, the natural next step is to submit your work so a Validator can review it.

`validationResponse` is used by the Validator. This is where they decide whether your work passes or fails the validation.

The `validationRequest` function looks like this:

```latex
**function** validationRequest(address validatorAddress, uint256 agentId, string requestUri, bytes32 requestHash) external
```

For the parameters:

- `agentId` — works exactly the same way as described earlier, so no need to repeat it here.
- `validatorAddress` — pretty self-explanatory: it’s the address of the validator. If you want someone to verify your work, you need to say who they are.
- `requestUri` — by now you should have a pavlovian reaction to seeing “URI”. Yes, it again points to an off-chain file. Because storing large data on-chain is absurdly expensive, the actual work output lives off-chain, and `requestUri` tells the validator where to find it.
- `requestHash` — this is the fingerprint of that off-chain file, ensuring it hasn’t been secretly altered. Same idea as in the `Reputation Registry`: if even a comma changes, the hash won’t match, and everyone will know the file has been tampered with.

The `validationResponse` function looks like this:

```latex
**function** validationResponse(bytes32 requestHash, uint8 response, string responseUri, bytes32 responseHash, bytes32 tag) external
```

For the parameters:

- `requestHash` — this corresponds directly to the `requestHash` in `validationRequest`. Makes perfect sense: the validation result must be tied precisely to the specific work being evaluated.
- `response` — this is the validator’s final judgment, expressed as a score from 0 to 100. What counts as a “good” score or a “passing” score really depends on the context — different tasks and domains tolerate errors very differently.

Of course, a score alone without any explanation would be… questionable.

Give too low a score, the Agent might suspect the validator and the user are teaming up to get free work.

Give too high a score, the user might start wondering whether the validator is *in cahoots* with the Agent.

So it’s best to attach evidence.

That’s where `responseUri` and `responseHash` come in:

- `responseUri` points to the validator’s evaluation report — essentially, the evidence.
- `responseHash` ensures that this evidence hasn’t been tampered with. As you know, if anything in the file changes — even a single punctuation mark — the hash will no longer match.

Up to this point, the flow makes sense, and the mechanism seems solid.

But something still feels… missing, doesn’t it?

Exactly — the **evaluation criteria** and **evaluation methodology**.

Sure, a score of 0 or 100 is easy to distinguish. Nobody will argue about that.

But what about **59 vs. 60**? **90 vs. 91**?

Is there an objective standard for that?

Who codes better, **ChatGPT** or **Claude**?

Are **DeepSeek’s responses** “good enough”?

Who’s the real **GOAT**, Michael Jordan or LeBron James?

Is there a universally accepted answer? **Of course not.**

Not everything is as verifiable as a crypto signature.

Not everything is as clear-cut as an arithmetic problem with a single correct answer.

**Dig too deep into this stuff and you’ll fall straight into a bottomless pit.**

It seems the designers of the `Validation Registry` understood this well. Rather than forcing a rigid, top-down standard, they wisely leave this part — the criteria, the methods, and whether people accept the outcomes —  to the community.

And you’ll notice: none of this is encoded in the protocol itself or enforced on-chain. In fact, It *can’t* be.

Most of these considerations will emerge only through real-world use of `ERC-8004`, be refined over time, and eventually be summarized and standardized outside the core spec.

## **An atypical ERC**

If we were only talking about the mechanics of `ERC-8004`, we could pretty much wrap things up here.

But as an ERC standard, `ERC-8004` does have a few rather unconventional aspects — and these leave me feeling a bit conflicted.

On one hand, they’re unexpected; on the other hand, they are reasonable.

These unconventional aspects come from passages like the following in the official specification:

<img width="2048" height="115" alt="image" src="/assets/Jason404/Deployment of ERC8004.png" />


The use of the word **expect** in the spec may sound gentle on the surface, but what it implies has the energy of a CEO issuing a decree.

Normally, an ERC standard is meant to be used openly and independently — meaning: you deploy yours, I deploy mine, and we don’t get in each other’s way.

That’s how it works with `ERC-20`:

**USDT** runs its own implementation, **USDC** runs its own, and everyone stays in their lane.

Same with `ERC-721`:

**BAYC** deploys one contract, **Pudgy Penguins** deploys another, no overlap, no interference.

But `ERC-8004` is different.

Here, the recommendation is to have **a single smart contract per chain**, shared by *all* project teams and all Agents for registration and management.

Given that it’s merely an application-level standard — not a core consensus rule — it obviously can’t enforce this.

Which is precisely why the spec uses **expect**, rather than the far stronger **must**, or even **should**.

Taken together with the “official pedigree” of `ERC-8004` — backed by the Ethereum Foundation, Coinbase, MetaMask, and so on — it’s hard not to read that word **expect** as something closer to an unwritten rule.

Let’s be honest: influence and “who’s behind you” matter everywhere, not just in Web3.

When your boss tells you, “I hope you consider this” or “I’d suggest doing that,” you don’t seriously treat it as optional. It’s not a wish; it’s a directive wrapped in polite phrasing.

But stepping back for a moment — is this really some kind of overbearing clause? Or does it actually make sense?

If we judge it objectively, there is a reasonable logic behind it.

Just look at the last few years of trade war — tariffs, restrictions, supply-chain disruptions — a vivid reminder that a fragmented, protectionist market hurts everyone.

A unified, open, well-ordered market benefits both businesses and everyday users.

If you’ve ever been frustrated by price hikes or arbitrary purchase limits, you already understand the point.

And in that light, `ERC-8004`’s design becomes much easier to appreciate.

It aims to build an economy of Agents — and the more unified, open, and orderly that economy is, the more likely it is to flourish.

Compared with a fragmented landscape where every project deploys its own `ERC-8004` contract — each one acting independently and creating its own little silo — a single shared registry would make the entire ecosystem far smoother.

The interactions become simpler, barriers between projects get lower, and the economy becomes more open and free.

Of course, that assumes the registry sticks to essential administrative duties and doesn’t meddle in application-level business logic.

But if there’s only one unified contract per chain, then the real question is:

**Who gets to deploy it?**

Who has enough credibility — and enough influence — to convince project teams, many of whom are potential competitors, to set aside differences and align on one shared registry?

The answer is fairly obvious.

This is why I emphasized the “official pedigree” and semi-official background earlier.

Terms like these may feel a bit out of place in the Web3 world, but whether we like it or not, they do play an irreplaceable role.

Now you can probably see what I meant by “unexpected yet completely reasonable.”

Unexpected, because most ERC standards don’t recommend a single-instance deployment.

Reasonable, because given its goals and long-term ecosystem vision, it’s actually a sensible choice.

## **Conclusion**

As for the core ideas and mechanisms behind `ERC-8004`, that’s pretty much the gist of it.

Since the proposal hasn’t reached its final stage yet, many parts are still evolving, so nothing here should be treated as a definitive conclusion.

But if you look at how the spec has progressed from Draft to Review, you’ll notice that its design philosophy and intended use cases have remained consistent.

After all, as a resume system and a labor marketplace for Agents, its underlying concepts aren’t that different from how things work in the human world.

So once you read the spec carefully, it’s actually quite familiar and intuitive.

Of course, AI is constantly evolving. 

How AI relates to humans — and to other AI — keeps getting redefined.

Who knows what kind of paradigm-shifting surprises the future might bring?

**Stay hungry, stay foolish!**
