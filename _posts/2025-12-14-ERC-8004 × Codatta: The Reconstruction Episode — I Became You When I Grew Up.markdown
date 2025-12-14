# **Reborn as the Lord of** `ERC-8004`

Rebirth, time-travel, and domineering CEOs have been blockbuster genres in recent years, practically making people unable to stop reading. After consuming **so many power-fantasy novels that the usual stuff no longer does it for me.** 

To get an even stronger fix, one can only create something oneself. Writing a masterpiece that mixes all these elements into one ultimate story—just thinking about it is exciting. 

I even thought of the name: **“Codatta: Reborn as the Lord of `ERC-8004`.”**

Sorry, some readers may be disappointed—

There is a slight deviation.

Sorry to disappoint, but our protagonists aren’t the usual handsome heroes or stunning heroines.

This time, the leading roles go to Codatta and ERC-8004.

And the main storyline?

It’s about placing a mature soul into a brand-new body, then rise to dominate the whole realm.

—aka: **the Steps for Reconstructing the Codatta DID using `ERC-8004`…**

**Reconstruction is the first approach to integrating Codatta with ERC-8004.**

The appeal of this approach is clear: it’s **simple**, **straightforward**, and **produces immediate results**.

But of course, any solution that only highlights its benefits while ignoring its side effects is—let’s be honest—just being irresponsible.

The main side effect here is the relatively high level of coupling, which may introduce unpredictable constraints or limitations as the business evolves.

Naturally, this concern is evaluated primarily from **Codatta’s** point of view.

For ERC-8004, as an open protocol standard, it has no feelings to hurt—its job is to embrace all use cases. The more, the merrier.

We’ll dive deeper into the side effects later. For now, compared with the gains it brings at this stage, they’re hardly a deal-breaker.

**Back to the main thread. As mentioned in the previous article, “reconstruction” simply means rebuilding the Codatta DID using the ERC-8004 standard—that is, representing the Codatta DID within the EVM ecosystem in the data schema defined by ERC-8004.**

If you’ve forgotten what ERC-8004 or the Codatta DID actually are, feel free to revisit the earlier articles:
[ERC-8004: MCP on Ethereum](https://medium.com/@hopeoftown/erc-8004-mcp-on-ethereum-b42003be3fa4 "ERC-8004: MCP on Ethereum")
[ERC-8004 & Codatta: Three Paths Toward the Knowledge Layer](https://medium.com/@hopeoftown/erc-8004-codatta-three-paths-toward-the-knowledge-layer-23053f1edf42
 "ERC-8004 & Codatta: Three Paths Toward the Knowledge Layer")

It’s worth noting that **Codatta DID** here is used as a representative term referring to a range of information related to Codatta’s users. In fact, because `ERC-8004` as a resume template is designed quite comprehensively, beyond the static user information recorded in the narrowly defined **Codatta DID** itself, certain dynamic information can also be incorporated into the `ERC-8004` framework — though this is by no means required.

# It's the match-3 game, Stupid

To design a reconstruction scheme, the first thing you must learn is this — don’t be afraid, I’m not telling you to read the *Design Patterns Explained* or the *Database Systems Concepts*.

It’s actually much simpler.

All you really need is to learn how to play a **match-3 game**.

Yes, that’s right. A match-3 game.

And what’s the essence of a match-3 game?

It’s about spotting commonalities, finding similarities, clearing duplicates, and repeating the process again and again—until everything becomes smooth and unobstructed.

Now compare this with how we approach technical reconstruction.

To say they’re merely similar would be an understatement — **they’re practically identical.**

At one point, I even suspected that every top-tier architect is also a secret match-3 champion.

You can find countless excuses to avoid reading books.

But now that I’m inviting you to play a game, surely you won’t refuse… right?

The ultimate principle is simplicity.

Using the `ERC-8004`  to carry out the reconstruction of **Codatta** essentially comes down to this:

**apply the same sharp instincts you use in a match-3 game — keep identifying their commonalities and merge them together.**

let’s start with `ERC-8004`.

`ERC-8004` defines three main modules: the `Identity Registry`, the `Reputation Registry`, and the `Validation Registry`.

Don’t let the grand names intimidate you — you’ll soon realize these modules are extremely basic and universal. Most real-world business systems rely on these same three components.

In other words, even if it stopped serving AI Agents today, it could walk into another industry tomorrow and immediately find a new job.

If you’ve observed long enough and have a habit of summarizing patterns, you’ll notice that any entity — whether a human or an AI Agent — presents a few consistent dimensions of itself to the world. The difference is merely whether they’re explicit or implicit. Summarized, they’re nothing more than:

- **How I see myself:** *Identity*
- **How others see me:** *Reputation*
- **Who I actually am:** *Validation*

When you combine these sensory dimensions above, you can form a fairly comprehensive and insightful understanding of any subject.

Look around: whether it’s a company hiring employees, an organization selecting its next leadership, or a Web3 DAO (Decentralized Autonomous Organization) running a voting process — they all fundamentally rely on these same frameworks to recognize, evaluate, and decide.

Unsurprisingly, within **Codatta’s** business ecosystem, users are also described through these three dimensions.

For example:

- **How I see myself (Identity):**
    
    I am a data contributor capable of providing accurate and authentic food-image labels.
    
    Especially when it comes to Sichuan cuisine — that’s my comfort zone.
    
- **How others see me (Reputation):**
    
    Suppose people who have worked with you over a long period give you a score of 90 out of 100.
    
    That likely means you’re reliable, diligent, and won’t deliberately act maliciously.
    
    However, you may occasionally lack attention to detail and make mistakes.
    
- **Who I actually am (Validation):**
    
    *The proof is in the pudding.*
    
    Give me a food image, and I will label the food items in it, such as: name, portion size, nutritional attributes, and so on.
    
    You can invite five professional judges to verify my work.
    
    If at least three of them vote to approve, confirming my labels are correct, then my task is considered completed.
    

Of course, providing such a rich description isn’t about writing a civil-service essay or piling on fancy words for the sake of it.

The content itself must meet a certain level of quality before it can be considered usable. After all:

- **Only when your description is clear** can others discover you more quickly.
- **Only when your description is complete** can others understand you more fully.
- **Only when your description is accurate** can others interact with you more effectively.

**Discovery** is the starting point, **understanding** is the process, **interaction** is the mechanism — and **mutual benefit is the ultimate goal.**

## Step 1: Divide into three

**In the Codatta ecosystem, what is the ultimate goal?**

**Who is this “win–win” supposed to be between?**

Naturally, it’s the **data consumers** and **data contributors** who should both come out ahead.

And what does a win–win look like?

It means completing data transactions efficiently:

data consumers get the data they want, and data contributors receive the compensation they deserve — which may be cash paid per task, or a proportional share of data ownership.

And yes, apologies for momentarily forgetting about Codatta itself.

After all, we’re not running a charity or doing this just for fun — business is still business.

But if both sides of the marketplace are winning so hard they can’t stop smiling, then honestly, would Codatta’s own success really be far behind?

To achieve this goal, **Codatta** has built a **three-layer interaction framework** designed to ensure that these descriptions remain clear, complete, and accurate.

- **The first layer** is the fundamental digital identity system — the one we’ve consistently referred to as **Codatta DID**.
    
    This layer contains static information: relatively structured, stable, and not subject to frequent changes.
    
    And despite being called **Codatta DID**, the name already gives it away — since it’s a DID (Decentralized Identifier), it is in fact a decentralized, W3C-compliant identity framework, not something tightly bound to any single platform.
    
    A DID is also maintained and displayed directly by the user.
    
- **The second layer** is **Codatta** **Reputation** system.
    
    This layer contains *dynamic* information, maintained by the Codatta platform currently, and updated in real time after the user interacts with the ecosystem.
    
- **The third layer** is **Codatta** **Data Production** system, which, similarly, is maintained by the **Codatta** platform currently and also consists of *dynamic* information.

## Step 2: Similarities and Differences

### Codatta DID & `Identity Registry`

The **Codatta DID** and the `Identity Registry` in `ERC-8004` are, in both functional positioning and practical usage, strikingly similar.

Most of the content can be migrated almost directly.

The main consideration is how to achieve a clean one-to-one mapping — or, to put it plainly, **which fields in the Codatta DID should be placed where inside the** `Identity Registry`, whether everything fits properly, and whether anything becomes misaligned after the migration, requiring some additional adjustment.

### Codatta Reputation & `Reputation Registry`

As for the **Reputation** system and the **data-production** system, I’ve repeatedly emphasized that they are currently maintained by the **Codatta** platform.

Important things must be said three times — and this is the third.

In the context of Web3 decentralization fundamentalism, this is not something worth proudly announcing.

So the fact that I’m highlighting it should already signal to you that there is something deeper going on here.

And indeed, there is.

Even though **Codatta Reputation** and the `Reputation Registry` in `ERC-8004` may look similar on the surface, their actual implementations differ significantly — and cannot be directly transplanted.

Careful readers may have already noticed the key point:

the phrase **“maintained by the Codatta platform.”**

In `ERC-8004`, the `Reputation Registry` also handles reviews and scoring, but these reviews are far more free-form.

As long as you receive authorization from the person being reviewed, you can submit any comment.

Yes, that’s right — **any** comment.

Of course, we don’t recommend profanity or politically sensitive remarks, but frankly speaking, you can say them.

Even the person granting authorization has no ability to restrict what you may or may not say afterward.

— The upside is clear: there’s no intermediary platform manipulating your statements, editing your opinions, or muting your voice.

— But the downside is equally obvious: the credibility of such a comment section inevitably suffers. Without guidance, constraints, or verification, people comment however they like and score however they feel. Everything depends on mood and self-restraint.

A place with no supervision may feel “free,” but chaos is the inevitable companion of that kind of freedom.

Unlike `ERC-8004`, which positions itself as a protocol standard, **Codatta**, as a platform, has a primary mission: to be accountable to both sides of the marketplace.

In other words, for data consumers, the delivered data must meet a certain level of quality — at the very least, it must be correct.

For data contributors, their effort and seriousness must be recognized — because at the end of the day, it all ties back to financial rewards.

Even the `ERC-8004`, as we discussed in an earlier article, its recommendations for deployment and usage are more “opinionated” than conventional ERC standards, precisely to make agent-to-agent communication and collaboration more unified, efficient, and orderly.

In this sense, decentralization and openness are *means*, not ends.

Clearly, **Codatta** **Reputation** system cannot afford to be as laissez-faire as the one in `ERC-8004`, or it would inevitably introduce unnecessary conflicts.

If you don’t believe it, just look at the most seasoned e-commerce giants on the internet —

these platforms fully understand the art of doing business, hold all the permissions and rules, and even possess ultimate interpretive authority.

And yet, disputes on their platforms are still endless:

— counterfeit goods, mismatched products, false delivery confirmations, malicious refunds, lost packages, incomplete returns…

— sometimes it’s the buyer’s fault, sometimes the seller’s, sometimes the courier’s, and sometimes no one can even tell whose fault it is…

The list goes on, and it’s exhausting to think about.

Anyone who has done enough online shopping knows exactly what I mean.

Therefore, in the actual implementation of the Reputation system, Codatta uses a mechanism where the platform itself assigns each user’s reputation score.

Codatta evaluates users across multiple dimensions and provides a consolidated credibility score.

These dimensions include:

- **Basic user information:** first impressions matter.
- **Historical fulfillment record:** as the saying goes, actions speak louder than words.
- **The scale of staked assets:** those with stable holdings tend to show stable commitment.

Because of these differences, certain structures and patterns from the `Reputation Registry` in `ERC-8004` can certainly be used as references.

However, when it comes to defining constraints and actual usage, the design must be customized separately.

In addition, the more attentive readers may have noticed a second hidden clue — the key lies in the word **“currently”.**

That’s right.

The essence of Reputation scoring is user profiling based on large-scale data. As the Codatta ecosystem grows, there will inevitably be more user-related data sources and more applications relying on them.

More data sources and richer categories of data will naturally lead to continuous evolution in user-profiling algorithms.

Meanwhile, different applications may focus on slightly different user dimensions, resulting in diverse requirements for how user profiles should be generated.

These differences may not be fully captured by the **Codatta Reputation** system alone.

Therefore, Codatta is also considering that, at an appropriate point in the future — and only when user privacy can be handled properly — certain related information may be made public.

This would allow third parties to build their own profiling models tailored to their specific needs, establishing personalized evaluation standards.

By using **Codatta Reputation** scoring as the foundation and adding their own domain-specific perspectives, they can enrich the **Codatta Reputation** ecosystem while maintaining reliability and trustworthiness.

### Codatta Data Production System & `Validation Registry`

The **Codatta Data Production** System manages the lifecycle through which raw, unstructured data evolves — passing through sample, label, validation, and other processes — into its final product: the **Data Asset**.

Much like the **Codatta Reputation** system, this system is deeply tied to business logic.

Even when the workflow appears similar, the execution methods can differ completely depending on the requirements of the specific data product.

Take label as an example. Even under the general category of “robotics data labeling,” tasks can vary dramatically:

- Some tasks only require the annotator to identify the object already highlighted in a video.
- Some require users to discover objects in existing videos on their own and label what those objects are.
- Others require annotators to record their **own demonstration video** and label what the video depicts — for example, showing a robot how a human picks up a cup and drinks water.

These examples are merely for easier understanding. In practice, due to the sheer diversity of real-world applications, new requirements and new standards for data products often emerge in ways none of us could have anticipated.

Standardization, categorization, and process unification are, of course, admirable goals — but unfortunately, at this stage, they remain difficult to achieve.

Moreover, compared with **Codatta Reputation**, the data production workflow is even more complex.

These processes involve a large number of operations and interactions, with performance and latency requirements that are — no, more accurately, **undeniably** — beyond what on-chain computation and storage can support.

This makes it impossible to standardize or fully migrate the **Codatta Data Production** System onto the blockchain.

And this is precisely why this system must, once again, be **maintained by the Codatta platform**.

**No surprise — the same problem lives here too.**

The `Validation Registry` in `ERC-8004` faces the very same challenge.

So `ERC-8004` took a practical approach: anything too messy, too case-specific, or simply impossible to standardize gets pushed off-chain, where the involved parties can sort it out themselves — and only the final verdict is written back on-chain.

**On-chain cares about the result.**

**Not the method.**

**Not the process.**

Interestingly, this design philosophy — a relic from the BTC Lightning Network and the early Ethereum NFT era — still holds up remarkably well today.

And because this approach leaves plenty of room for creative problem-solving, the conclusion is straightforward:

just like **Codatta Reputation** system, the **Codatta Data Production System** can reuse parts of the `ERC-8004` `Validation Registry`.

But, it will need a layer of customization on top to fit the realities of Codatta’s business workflows.

Of course, the word **“currently”** cannot be ignored here either.

In reality, we’ve been experimenting all along. As more data demands plug into the ecosystem, and as more data products are produced and delivered, the question naturally arises:

Can we eventually abstract and distill repeatable patterns — a playbook of sorts — that would allow **Codatta’s Data Production** system to be categorized, standardized, and ultimately executed and managed in a more decentralized way?

After all, the fact that we can’t do it now doesn’t mean we’ll never be able to.

## Step 3: **Draw the Lines, Clear the Board**

After two rounds of observation, we’ve finally reached the part where we actually start doing things.

By now, you probably have a vague sense of how this might work.

That feeling of “I seem to understand… but the moment I try to touch anything, I know absolutely nothing.”

Knowing everything, understanding nothing.

Totally normal.

Anyone who studies protocols and tries to build things on top of them lives in this state permanently.

Most of the time, it feels like alchemy.

You toss ingredients in however you like, adjust the heat on instinct, guess the timing, and hope the final result isn’t a disaster. Sometimes it looks wrong, sometimes it’s barely acceptable, and sometimes you somehow strike gold.

Sounds familiar, doesn’t it?

Exactly like training a large language model — you tweak the architecture, increase parameters, extend the context window, feed in more data… but sometimes the model ends up performing worse.

The classic “intelligence drop.”

Anything related to AI just refuses to behave.

Fine. Since everything is a bit of a wild gamble anyway — and since no one really knows what the “best” solution looks like — let me be the first to throw out a starting point.

Who knows?
****Maybe this rough draft will inspire something far better.

### Handling of Codatta DID

Let’s start again with the **Codatta DID**.

In the current design, the goal is twofold:

**ensure business adaptability within the Codatta ecosystem, while maintaining full compatibility with the W3C DID standard.**

To achieve this, a Codatta DID must includes several essential fields:

- `id`: globally unique identifier, it's a number randomly generated based on the standard specification of `UUIDv4`, usually expressed as a 36-bit hexadecimal number, for example, "3f7c9f66-0db7-4cc1-a1c6-80329b49f70e", as you can see, the actual bit is a 32-bit hexadecimal number, there are 4 bits is a segmentation character "-", mainly to enhance human readability, for the machine can be ignored, so the actual storage is with 128-bit unsigned integer ( `uint128` ), the equivalent of the 32-bit hexadecimal number for storage. `UUIDv4` itself is decentralized, simple to generate, and practically collision-free — not mathematically impossible to collide, but close enough that no engineer loses sleep over it.
And no, we don’t need to dive into the details of how UUIDv4 works here.
Just think of it as a well-established, widely recognized identifier standard.
- `owner`: The owner of the DID.
In keeping with decentralization principles, this is an on-chain address.
It can be transferred and represents the DID’s highest-permission administrator — the “super admin,” and the only one of its kind.
- `controller`: The managers of the DID. They are authorized by the `owner` and can update DID information. This field is an array since a DID may have multiple controllers. The rule of thumb: every `owner` is a `controller`, but not every `controller` is an `owner`. Simple enough.
- `verificationMethod`: The list of supported authentication methods. This includes private-key signatures (the usual Web3 login method), but can also include OAuth-style authentication such as Google auth. Since a DID can support multiple login methods, this is also an array. `Controller` have full control over how this is configured.
- `@context`: Information describing the DID’s context. In **Codatta DID**, this is stored as an array. To remain compatible with the W3C DID spec, the first element must always be: "https://www.w3.org/ns/did/v1.1". The remaining entries are flexible and can be filled by controllers as needed — think of them as structured annotations.

 The above fields are all standard **W3C**  DID fields except for `owner`.

 

Alright, I know you’ve just spotted another new term — **W3C**.

And since they didn’t pay for a sponsorship slot in this article, I won’t spend paragraphs introducing them.

All you really need to know is that **W3C** stands for the **World Wide Web Consortium**, the globally recognized authority that sets the standards for the web.

Their portfolio includes names you definitely *have* heard of:

**HTML, CSS, XML, WebAuthn, Passkeys**, and so on.

In fact, I can say this with full confidence:

**as long as you’re still using the internet, you’re interacting with W3C standards every single day — you just don’t realize it.**

Now you understand why we need to stay compatible with **W3C**, right?

It’s the same reason we aim to remain compatible with `ERC-8004`.

 

Now let’s circle back and see how these fields map into `ERC-8004`.

First, the meaning and format of `owner` are identical to the `owner` field in the `Identity Registry` of `ERC-8004`.

Same purpose, same semantics, even the same name — a perfect drop-in replacement.

As for `id`, its role is essentially the same as `agentId` in the Identity Registry: both serve as identity markers.

The only difference is that `id` is a **global** identifier, while `agentId` is **local** to a specific smart cotract.

P.S. In `Identity Registry`, the global identifier is formed by combining `namespace`, `chainId`, `identityRegistry`, and `agentId`.

If you need a refresher, see the earlier article:  https://medium.com/@hopeoftown/erc-8004-mcp-on-ethereum-b42003be3fa4

But this distinction isn’t what matters here.

From a practical standpoint, what matters is simple:

**are the types and sizes compatible?**

Fortunately, the answer is yes.

`id` is a 128-bit unsigned integer (`uint128`), while `agentId` is a 256-bit unsigned integer (`uint256`).

Meaning: storing id inside agentId is completely viable, with room to spare.

The remaining fields don’t have explicit slots inside the `Identity Registry`.

And this is where ERC-8004’s openness becomes incredibly useful.

We have two places where these fields can live:

- 1. The JSON file referenced by the `URI` field
    
    This is stored off-chain and retrieved/parsed via the URI.
    
- **2.** The reserved `metadata` field
    
    This is stored directly on-chain and can be parsed from the block data.
    

In short: anything without a predefined “seat” in the `Identity Registry` can still be accommodated — you just have to choose whether it belongs on-chain or off-chain.

**Method 1: Off-chain storage**

Storing the data in the off-chain JSON file referenced by the `URI` field comes with several advantages: **cleaner formatting, better readability, and far greater flexibility for future extensions.**

For example, these fields could be recorded like this:

```latex
{
  "type": "https://eips.ethereum.org/EIPS/eip-8004#registration-v1",
  "name": "annotator",
  "description": "Codatta DID",
  "image": "https://example.com/image.png",
  "endpoints": [
    {
      "name": "controller_1",
      "endpoint": "https://controller.example/Controller_1.json",
      "version": "1.0.0"
    },
    {
      "name": "verificationMethod_1",
      "endpoint": "https://verificationMethod.example/Method_1.json",
      "method": "keyAgreement", *// OPTIONAL, as per Method spec*
      "version": "2025-11-18"
    },
    {
      "name": "context1",
      "endpoint": "ipfs://{context1}",
      "version": "2025-11-18"
    }
  ],
  "registrations": [
    {
      "agentId": "3f7c9f660db74cc1a1c680329b49f70e",
      "agentRegistry": "eip155:1:{identityRegistry}"
    }
  ],
  "supportedTrust": [
    "reputation",
    "authentication",
    "keyAgreement"
  ]
}
```

At a structural level, this approach remains fully compatible with `ERC-8004`.

The description field is always set to **“**Codatta DID**”**, clearly signaling that this identity is associated with the Codatta platform.

The `controller`, `verificationMethod`, and `@context`fields can all be recorded as elements within the `endpoints` array.

Under the `ERC-8004` specification, there is no strict limit on the size of `endpoints`, which means entries can be added freely based on how many controllers, verification methods, or contextual elements are needed.

The `registrations` field, on the other hand, is strictly defined in ERC-8004, both in structure and semantics.

As a result, no modifications or extensions are required here — you simply populate it according to the specification. Everything is already defined; there’s no need to invent anything new.

The `supportedTrust` field is optional.

If it is provided, it can be used to declare the verification methods supported by **Codatta DID**, such as the three shown in the example above:

- `reputation`: a verification mechanism supported by `ERC-8004`, representing a user’s reputation score.
    
    Strictly speaking, this is not an authentication method, but is often used as a threshold signal in certain application scenarios.
    
    That’s perfectly fine — as mentioned earlier, Codatta has its own Reputation system, so maintaining compatibility here makes complete sense.
    
- `authentication`: verification methods used for authentication, such as Google OAuth login.
- `keyAgreement`: verification methods used for secure communication, such as asymmetric cryptography.

**Method 2: on-chain storage**

As explained in an earlier article, `ERC-8004` provides a reserved on-chain field called `metadata`.

`metadata` is a `MAP` — a key–value set. Anyone who has written code before will immediately recognize what this is good for.

In short, this structure can store almost anything:

structured fields, unstructured content, images, videos — in theory, it can hold all of it.

We won’t dive into the implementation details here.

Knowing this much is enough for now.

Of course, no solution in this world is perfect.

The advantages are obvious — but so are the downsides.

The biggest one? **Readability.**

Think of it as a large tote bag.

You can throw everything into it — one bag, no compartments.

Compared to a well-organized briefcase with carefully designed sections, it’s lighter and holds more.

But when you actually need to find something inside… well, good luck.

Under the hood, the storage model is simple.

In a key–value pair, the `value` is the actual data being stored.

And anyone with a basic understanding of computer science knows this truth:

No matter how rich or diverse content looks to humans —

Chinese, English, numbers, images, videos, music —

to a computer, it’s all just emotionless binary data.

A sequence of bytes.

Nothing more than different arrangements of 0s and 1s.

Some longer, some shorter.

Some with more 1s, some with more 0s.

But fundamentally, no difference.

The `key`, meanwhile, is typically the hash of the value.

No matter how complex the original data is, once it passes through a hash function, it collapses into a fixed-length hash value.

It’s hard not to see the parallel with life itself.
In the end, even the grandest lives are distilled into just a few short lines.

Now, when I say “typically,” I mean exactly that.

In theory, as long as `key` don’t collide, you could use anything:

1, 2, 3, or even human-readable names like "controller" or "verificationMethod".

But hashes have a very real advantage — a crucial one.

A hash is **uniquely tied** to the data it represents.

It provides a unique identifier for a piece of data:

no duplication, no confusion, fully decentralized, and easy to process in parallel.

No need for a central committee to sit around assigning IDs.

Just think about it.

If you used names as `key`, collisions would be inevitable —
there are only so many good names, and everyone wants the good ones.

If you used sequential numbers instead, things wouldn’t be much better.
In a distributed setting, multiple submissions happen at the same time.
Everyone believes they were first.

So why is he number one — and not me?

Another important advantage is that a hash serves as a reliable check for data integrity and authenticity.

You may recall from an earlier article that any modification to the original data — even changing a single punctuation mark — will result in a completely different hash value.

And crucially, the direction of that change is unpredictable.

Of course, this assumes you’re using a *proper* hash function.

Don’t worry — this isn’t a word game.

Such algorithms very much exist, and they’ve been battle-tested for years.

Cryptographers have already done the hard work for you.

Bitcoin relies on `SHA-256`.

Ethereum uses `Keccak-256`.

No need to overthink it.

They come ready to use — just open the box and plug them in.

After all this, the takeaway is actually very simple:

All information related to a **Codatta DID** — whether we’ve discussed it already, haven’t touched on it yet, or may introduce in the future — can, in principle, be stored on-chain in a key–value form.

The advantages of on-chain storage hardly need repeating:

true immutability, real resistance to tampering, and no risk of data loss.

That said, the downsides are just as obvious — and there are two major ones:

- **High on-chain storage costs**
    
    This becomes especially painful when the amount of data grows.
    
    Take `verificationMethod`  for example: there is no hard limit.
    
    In theory, you could support a hundred different authentication methods.
    
    That’s not a small bill.
    
    And even if you’re wealthy enough not to care about gas costs, there’s still a very real question of whether the chain has enough space to hold it all.
    
- **Poor readability and usability**
    
    On-chain data is stored as raw byte sequences.
    
    In practice, this means the data must be fetched and then parsed off-chain according to predefined rules before it becomes human-readable fields again.
    
    Parsing is both time-consuming and computation-heavy, which makes it unrealistic to perform on-chain.
    
    As a result, the data is not directly usable within the chain itself.
    

So while this approach is **theoretically feasible** and extremely flexible,

it’s still not recommended to store the core fields of **Codatta DID** directly in `metadata`.

A more sensible approach is to reserve metadata for future extensions — for

the kind of information that doesn’t fit neatly elsewhere and is inconvenient to process, but still benefits from being anchored on-chain.

### Handling of Codatta Reputation

In the earlier article on `ERC-8004`, we walked through one of its core functions and the parameters it exposes.
Let’s bring it back into view:

```latex
**function** giveFeedback(uint256 agentId, uint8 score, bytes32 tag1, bytes32 tag2, string calldata fileuri, bytes32 calldata filehash, bytes memory feedbackAuth) external
```

This is the function through which a reviewer submits feedback to a reviewee.

The feedback itself consists of two parts:

- `score`, represented by score, ranging from 0 to 100;
- and the actual evaluation content, referenced jointly by `fileuri` and `filehash`.

The reviewee is identified by `agentId` — which, as we discussed earlier, corresponds to the user’s global identifier, generated under the `UUIDv4` specification.

Under the typical usage pattern, this works very much like reviews on an e-commerce platform:

Under the conventional usage model, this works much like the review systems on e-commerce platforms:
after an interaction takes place, each participant, as a user, leaves feedback specific to that interaction.

As a result, a typical `Reputation Registry` may accumulate a large number of feedback entries.
And much like product reviews on e-commerce platforms, these entries tend to suffer from familiar issues:
uneven quality, wildly varying formats, inconsistent standards, and conclusions that are difficult to trust.

**The Codatta Reputation system**, however, takes a very different approach.

As mentioned earlier, to preserve both usability and reliability, **Codatta** currently designates a **single scoring authority**: the Codatta platform itself.

A user’s reputation score is derived from their historical behavior on the platform and computed through **large-scale data analysis**—much closer in spirit to a bank’s credit score or a rating agency’s credit rating than to free-form user reviews.

As a result, when reconstructing **Codatta Reputation** using `ERC-8004`, we actually need **only a single entry** in the `Reputation Registry`.

**In short: one authoritative score, issued by the Codatta platform.**

The score’s update history — along with the rationale behind each change — can live off-chain, referenced through `fileuri` and `filehash`, and updated periodically.

There’s another detail worth revisiting from our earlier analysis of `ERC-8004`:

before anyone can submit feedback, they must first receive authorization from the reviewee.

This makes the design straightforward.

**Codatta** can publicly disclose a platform address, and users may pre-authorize this address — explicitly allowing **Codatta** to write their platform reputation score on-chain.

Of course, users of **Codatta** remain free to authorize *other* parties to submit feedback as well.

This does not interfere with the **Codatta Reputation system** at all.

Anyone querying a user’s credibility can simply call `readFeedback` function,  passing in the publicly disclosed Codatta address, to retrieve the platform-issued reputation score.

All other feedback entries can either be ignored entirely or treated as supplementary signals — the choice belongs to the reader.

At this point, a careful reader might ask:

What if a user simply refuses to authorize Codatta?

To be honest, there’s nothing I can do about that.

And that’s perfectly fine.

At this point, we can only invoke the invisible hand of the market.

When you apply for a loan, the bank asks for your credit history.

If you refuse to provide it — or decline to pledge collateral — that is entirely within your rights.

But rejecting your loan application is equally within theirs.

Privacy deserves protection.

Property rights are inviolable.

You are free to say no.

And others are free to say no back.

If **Codatta Reputation** proves to be sufficiently credible and valuable, many applications may eventually require access to it as part of their decision-making process.

You can absolutely choose not to authorize **Codatta**, and you can choose not to share your reputation score.

Maybe that won’t affect you at all.

Or maybe it will sting a little.

Miss out on a high-value airdrop, perhaps?

Who knows.

If nothing else, this serves as a reminder for **Codatta** itself:
only by growing strong enough does its reputation system become truly valuable.

### Handling of Codatta Data Production System

In `ERC-8004` `Validation Registry`, the original design goal is to reach **multi-party consensus** by combining multiple methods and signals.

The consensus itself is actually very simple:

**Did the service provider deliver the result as required?**

You might ask: isn’t this just between the service provider and the requester?

Why “multi-party”?

Because there’s a third role involved: **the validator**.

Without a validator, disputes quickly turn into the classic *“he said, she said”* situation.

So instead, both sides agree in advance to trust a neutral third party — someone whose job is to verify the outcome and act as an on-chain notary.

At its core, this consensus process is oddly similar to a game of *Werewolf*.

1. **Night falls.**
    
    The service provider wakes up, submits the deliverable, and goes back to sleep.
    
    The requester wakes up… has nothing to add, and goes back to sleep.
    
    The validator wakes up, inspects the result, submits the verification report, and goes back to sleep.
    
2. **Day breaks.**
    
    Everyone wakes up and reviews the deliverable and the validation report.
    
    “Any objections?”
    
    None? Great. Consensus reached. Game over. Everyone goes home.
    
3. **Wait — someone objects?**
    
    Sorry, objection handling is not part of this phase.
    
    Please take it off-chain, resolve it yourselves, and come back once you’ve reached an agreement.
    
    Until then, the system sticks with the current deliverable and validation report.
    

By now, you’ve probably already figured this out.

In practice, the `Validation Registry` serves primarily as a formal on-chain checkpoint.
What constitutes a valid deliverable, who is qualified to validate it, how validation is performed,
and what counts as “passing” must all be agreed upon off-chain in advance.

To make this more concrete, let’s look at one of the core functions and the parameters it exposes.

In a typical `ERC-8004` workflow, the service provider initiates the process by calling the `validationRequest` function, formally requesting that a validator verify the submitted result.

```latex
**function** validationRequest(address validatorAddress, uint256 agentId, string requestUri, bytes32 requestHash) external
```

The `validatorAddress` specifies the validator’s address, effectively identifying who is responsible for performing the validation.
The combination of `requestUri` and `requestHash` points to the service provider’s deliverable report — the material submitted for the validator to inspect.

Once the review is complete, the validator submits their findings by calling the `validationResponse` function, thereby issuing the validation report.

```latex
**function** validationResponse(bytes32 requestHash, uint8 response, string responseUri, bytes32 responseHash, bytes32 tag) external
```

 

The `response`  is a numerical score ranging from 0 to 100 — as the name suggests, it represents the validator’s assessment of the delivered result.

Similarly, the combination of `responseUri` and `responseHash` points to a report as well.

The difference is that this time it’s not a deliverable report, but a **validation report** — one that documents the validation process in detail and explains *why* a particular score was assigned.

Naturally, you’ve probably already guessed what comes next:

there are no constraints here either.

What the deliverable report should look like, what format the validation report must follow, and what criteria they are expected to satisfy — all of this is left entirely to off-chain agreement among the involved parties.

At a high level — both in terms of workflow and system architecture — the `Validation Registry` shares many similarities with the **Codatta Data Production System**.

In Codatta’s data production pipeline, once users make data contributions, those contributions must be validated as well.

After all, this data is destined for real AI training.

Any form of data contamination or factual error isn’t just a minor issue — it’s a serious quality incident.

That said, as discussed earlier, the validation process in the **Codatta Data Production** System is intentionally more stringent.

Much like the Reputation system, this is a deliberate design choice to ensure both **authenticity** and **correctness**.

While data submission or labeling may, in many cases, be permissionless, validators are held to a much higher standard.

They may need to be authorized through platform-level evaluation, maintain a sufficiently high Reputation score, or stake a certain amount of collateral — collateral that can be slashed directly in cases of negligence, misconduct, or malicious behavior.

And for more complex scenarios, Codatta may even aggregate the judgments of multiple validators, synthesizing them into a final validation outcome.

At this point, all of this may sound rather complicated.

Don’t worry — there’s no need to panic.

In practice, using the `Validation Registry` to support **Codatta data production** system doesn’t introduce much friction at all.

Which makes perfect sense.

Everything that is hard to standardize, labor-intensive, or inherently messy has already been pushed off-chain and resolved through prior agreement.

What remains on-chain is, naturally, the simple part.

There is really just one thing to pay attention to:

`validatorAddress` **is not open to just anyone.**

Following the same approach used in the Reputation system, Codatta can publicly disclose a list of qualified validators.

Once a service provider — a.k.a. data contributor in Codatta — submits their contribution, they can initiate a validation request via `validationRequest`, selecting a validator **only from this published list**.

For tasks that do not involve privacy concerns — or for which the data requester has explicitly authorized disclosure — the deliverable report referenced by `requestUri` may include the raw data and labeling details.

This allows anyone to review and audit the work.

If unfairness or misconduct is discovered, it can be reported.

For tasks involving sensitive or confidential information, the deliverable report referenced by `requestUri` can be encrypted — for example, using the validator’s public key — so that only the designated validator can read it.

Alternatively, the report may omit sensitive content entirely and simply include an internal task identifier issued by the Codatta platform.

Using this internal task identifier, the validator retrieves the full deliverable report directly from Codatta platform and then submits a score via `validationResponse`.

As for how that score should be interpreted — what the scoring criteria are, and what a particular score actually means — those details are, once again, left to off-chain agreement among the relevant parties:

the data demander, the data contributor, and the validator.

Different scenarios call for different standards.

Different problems call for different solutions.

And that flexibility is very much intentional.

After all, reality isn’t a fairy tale.

There’s no fixed script, and outcomes are rarely predictable.

Different tasks come with very different kinds of uncertainty. For example:

- **Some tasks tolerate a wide scoring range.**
    
    Take image annotation as an example.
    
    Suppose there are five objects in an image.
    
    You identify one correctly and score 20.
    
    Alice identifies three and scores 60.
    
    Bob identifies all five and scores 100.
    
    All three annotations are correct.
    
    All three are usable.
    
    In this case, even a score of 20 still represents a valid contribution.
    
- **Other tasks demand much stricter scoring.**
    
    Consider crypto address labeling — determining whether an address is sanctioned.
    
    Here, there is no middle ground.
    
    It’s either yes or no.
    
    Either 100, or 0.
    

Wait, you’ve got *another* question?

Alright, alright — calm down and take a seat.

Go ahead. What is it?

So what happens if the data contributor or the data demander believes the validator didn’t follow the agreed-upon standard — in other words, they dispute the validation outcome?

To be fair, that’s not nitpicking.

We have to admit something uncomfortable: **not every standard is truly objective.**

Some debates are more like arguing over pineapple on pizza —
they’ve gone on forever, and they’re unlikely to ever be settled.

Take a more realistic scenario: 

If you’ve used ChatGPT long enough, you’ve probably seen it generate two answers and ask which one is better.
That kind of comparison often turns into a classic no-win question —
one with no objectively correct answer, where the judgment is inherently subjective.

And the list goes on. Besides judging conversational quality, we also run into:

- **Tagging images:** can anyone *really* draw a clean line between Impressionism and abstract art?
- **Judging toxicity or offensiveness:** “Why are you upset? I thought it was a great joke.”
- **Ethics:** “So are you pro-LGBT or anti-LGBT — yes or no?”

Once you start listing these, the examples just keep coming.

Sure, earlier we mentioned that **Codatta** can aggregate judgments from multiple validators and synthesize a final result.

But even that doesn’t guarantee the outcome is “**objectively** **correct**.”

Or rather:

what’s considered correct today may not be correct tomorrow;

what’s considered correct in one region may not be correct in another.

You know exactly what I mean.

So what do we do?

Don’t look at me — I still don’t have a magic answer.

At the end of the day, the only workable solution is **off-chain collective negotiation** among the relevant parties.

Full decentralization simply doesn’t solve this class of problems.

Which brings us to a very practical conclusion:

If Codatta users run into disputes while executing data tasks — whether they are data contributors, data demander, or validators — they can reach out to Codatta to help coordinate and resolve those disputes.

And frankly, that is precisely why a platform like Codatta needs to exist in the first place.

# **This Is Not the Finish Line**

At this point, we’ve largely covered how `ERC-8004` can be used to reconstruct **Codatta DID** using its existing building blocks.

What wasn’t part of the original plan was how far this discussion would naturally extend.

Along the way, it expanded beyond **Codatta DID** itself and brought in the **Codatta Reputation** system and the **Codatta Data Production** system as well — not by design, but as a natural consequence of following the logic through.

An unexpected outcome, but a worthwhile one.

From the beginning, this was never intended to present a final or optimal solution.

What it does offer, however, is something concrete: a proposal that is theoretically sound, practically feasible, and capable of working in the real world.

It is not an answer meant to close the discussion.

It is a starting point — one that can be challenged, refined, and improved.

What happens next no longer depends on the author.

Whether this line of thinking gains traction, sparks debate, or evolves into something better will largely be determined by how it is received and engaged with by the broader community.

And as for where that leads — experience suggests there is little cause for concern.

In an ecosystem full of quiet experts and hidden talent, meaningful ideas rarely end where they begin.
