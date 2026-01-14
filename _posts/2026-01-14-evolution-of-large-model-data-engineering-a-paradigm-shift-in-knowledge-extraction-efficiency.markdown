---
layout: post
title:  "Evolution of Large Model Data Engineering: A Paradigm Shift in Knowledge Extraction Efficiency"
date:   2026-01-14 23:00:00 +0800
categories: [AI]
author: sky
status: research
image: 
excerpt: "This paper reviews the evolution of data engineering for Foundation Models, revealing how the core driving force has shifted from computational expansion to knowledge extraction efficiency through four key paradigms."
---

## Abstract

This paper systematically reviews the evolutionary trajectory of data engineering for Foundation Models, pointing out that the core driving force has shifted from simple computational expansion to a "paradigm shift in knowledge extraction efficiency." Through the mathematical deduction of three evolutionary stages of Scaling Laws, this paper categorizes data engineering into four key paradigms: large-scale indiscriminate crawling, fine-grained manual annotation, AI-synthetic data, and human-machine collaborative evolution. The article provides an in-depth analysis of representative works and technical bottlenecks across four major application tracks: text, code, image, and video. Facing the risk of "model collapse" in the era of synthetic data, this paper offers strategic recommendations for AI data service providers to transform from "resource suppliers" to "knowledge architects," advocating for the construction of a digital knowledge foundation for the AGI era through decentralized expert networks and dynamic knowledge protocols.

## 1. Introduction: The Deep Evolution from Intelligence Explosion Back to the Essence of Knowledge

### 1.1 The Landscape of AGI Applications: From "Cognitive Demonstration" to "General Productivity"

{::nomarkdown}
<div style="display: flex; gap: 20px; margin: 20px 0;">
  <figure style="flex: 1; margin: 0;">
    <img src="/assets/Sky/1.PNG" alt="Figure 1" style="width: 100%;" />
  </figure>
  <figure style="flex: 1; margin: 0;">
    <img src="/assets/Sky/2.PNG" alt="Figure 2" style="width: 100%;" />
  </figure>
</div>
{:/nomarkdown}

Now that 2025 has ended, Generative AI has completely shed its early "chatbot" form, evolving into an underlying operating system reshaping global productivity. Its explosion across various dimensions marks the full penetration of AGI from digital space into physical and logical spaces [1]:

- **Text Dialogue & AI Search (Paradigm Shift in Knowledge Acquisition)**: At the forefront of public perception, ChatGPT (GPT-5/o3), Claude 4, and Gemini 3 have transformed "dialogue as search" into the mainstream. The rise of Perplexity and SearchGPT signals the end of traditional indexing engines; intelligent assistants are delivering precise answers directly through "conversational reasoning." According to 2025 industry statistics, AI-native search accounts for nearly 10% of global queries, while breakthroughs in long-context and logical reasoning by models like DeepSeek-V3 enable AI to handle complex academic research and business decision support [2].

- **The Intelligent Evolution of Software Engineering (From Assisted Programming to AI Agents)**: The software development landscape is undergoing an unprecedented revolution in efficiency. Tools such as Cursor and Claude Code have fundamentally redefined the development workflow, shifting programming from "manual coding" toward an "intent-driven" paradigm. Furthermore, the maturation of autonomous agents like Devin demonstrates that models now possess project-level capabilities for task decomposition, execution, and self-healing [3]. AI is transcending its role as a "Copilot" to become a "digital employee" capable of independently resolving complex engineering challenges [4].

- **Multimodal Creation & Physical Simulation (Industrialization of Visual Arts)**: At the level of visual expression, the artistic aesthetics of Midjourney and the granular control offered by Adobe Firefly have become deeply integrated into professional design pipelines. Concurrently, video generation models—headlined by Kling, Sora, and Runway Gen-3—have achieved a pivotal leap from static image generation to dynamic narrative video by performing preliminary simulations of physical causality [5]. These embryonic "world models" are currently reconfiguring the industrial production chains of film, advertising, and animation, securing a dominant share of the generative AI application market [1].

- **Cognitive Leaps in Science (AI for Science)**: In high-threshold professional tracks, AlphaFold 3's precise prediction of complex biomolecular interactions, along with AI breakthroughs in new material discovery and drug molecule simulation, prove that AGI is filling human capacity gaps in microscopic logic and massive computation [6].

The explosion of these phenomenal products is not just a victory for computing power, but a manifestation of the models' deep absorption of human intent, aesthetics, logic, and physical laws.

### 1.2 The Iron Triangle of Emergent Intelligence: The Collaborative Game of Models, Compute, and Data

The underlying architecture supporting the prosperity of the application layer can be summarized as the "Iron Triangle" of large models: Model Architecture, Compute Clusters, and Dataset Engineering.

- **Model Architecture**: With the maturity of MoE (Mixture of Experts) and inference-side reinforcement learning (a paradigm initiated by DeepSeek-R1), models are achieving higher logical transparency with fewer parameters [7].

- **Compute Clusters**: The deployment of clusters with 10,000 or even 100,000 GPUs has become the physical internal combustion engine driving the continued validity of Scaling Laws [8].

- **Dataset Engineering**: However, as architecture and compute gradually trend toward homogenized competition, data is becoming the "knowledge anchor" that determines the upper limit of intelligence. McKinsey's 2025 report emphasizes that as public internet corpora are exhausted, the center of gravity for industry competition has shifted from a "brute force" parameter race to a deep struggle for data sovereignty, knowledge density, and dynamic feedback loops [9].

### 1.3 The Logic of This Paper: Deconstructing the Fourfold Evolution of Knowledge Extraction Efficiency

This paper focuses on "data" as the core variable, arguing that the history of large model evolution is essentially a history of continuous optimization in **Knowledge Extraction Efficiency**. To systematically deconstruct this process, this paper follows the logic below:

- **Theoretical Origin**: We start from the mathematical perspective of Scaling Laws, deducing how model performance shifts from relying purely on "compute and parameters" to "data quality." Through the analysis of Kaplan, Chinchilla, and the latest "Quality-aware Laws," we establish quantitative coordinates for subsequent discussion.

- **Paradigm Transition**: We then deeply analyze the four key stages of data engineering: from the primitive accumulation of large-scale indiscriminate crawling to the precise capture of human intent through fine-grained manual annotation; then to the large-scale production of synthetic data using strong models, until entering the self-adaptive closed loop of human-machine collaborative evolution. We will break down the specific practices and technical bottlenecks of these paradigms in text, code, image, and video.

- **Reflections on Patterns**: Following the technical review, we step outside the timeline to reflect on the nonlinear interlacing relationship between the four stages from a systems theory perspective. We discuss how manual annotation and AI synthesis move from "competition" to "mutual causality" and analyze the inevitability of "human-machine symbiosis" as the ultimate future form.

- **Industry Response**: Finally, based on the aforementioned evolutionary patterns, we explore how AI data service providers should reconstruct their roles under the shadows of the "Data Wall" and "Model Collapse." We propose core strategies such as building incentive-compatible global expert networks, anchoring real human data as regularization terms, and promoting the "decoupling of knowledge and parameters" to build a solid digital knowledge base for AGI.

## 2. Theoretical Foundations: Three Evolutionary Stages of Scaling Laws

In the evolutionary trajectory of AGI, dataset engineering has ascended from a mere adjunct of computing power to the core variable determining the ceiling of intelligence. Understanding the starting point of dataset evolution requires returning to the mathematical deduction of the three key nodes of Scaling Laws.

### 2.1 The Kaplan Era: Parameter-Driven Scale Expansion

In 2020, Kaplan et al. from OpenAI established the initial development paradigm [10]. This theory revealed a power-law correlation between model performance (measured by Cross-entropy Loss $L$) and model parameter scale $N$ and training data volume $D$:

$$L(N, D) \approx \left[\left(\frac{N_c}{N}\right)^{\frac{\alpha_N}{\alpha_D}} + \frac{D_c}{D}\right]^{\alpha_D}$$

This formula provided theoretical justification for "brute force success," proving that as long as compute and data are expanded synchronously, performance improvement is predictable and continuous. During this period, the industry generally believed that increasing model parameters $N$ was far more efficient for performance than increasing data volume $D$, sparking the early "parameter arms race."

### 2.2 The Chinchilla Paradigm: Return to Compute-Optimal Balance

In 2022, Hoffmann et al. from DeepMind released the Chinchilla Laws [11], profoundly correcting the previous paradigm. They proposed a more precise parameterized loss function:

$$L(N, D) = E + \frac{A}{N^\alpha} + \frac{B}{D^\beta}$$

where $E$ is the irreducible loss, and $A/N^\alpha$ and $B/D^\beta$ represent losses from insufficient model scale and data volume, respectively.

By solving for $\min L(N, D)$ under a given compute budget $C \approx 6ND$ using Lagrange multipliers, Hoffmann reached a conclusion that shook the industry: when compute resources expand, model scale $N$ and training data volume $D$ should be scaled in equal proportion. This proved that most previous models, including GPT-3, were in a state of being "significantly under-trained," officially liberating dataset scale $D$ from the shadow of computing power.

### 2.3 The Quality-Sensitive Frontier: From "Data Quantity" to "Knowledge Density"

Entering 2024-2025, faced with the near-exhaustion of public internet data (the "Data Wall"), academic attention shifted from "scale" to "density." Subramanyam et al. (2025) introduced a dimensionless quality parameter $Q \in (0, 1)$ and proposed the Quality-aware Scaling Law [12]:

$$L(N, D, Q) = E + \frac{A}{N^\alpha} + \frac{B}{(D \cdot Q)^\gamma}$$

This formula reveals the Quality-Quantity Compensation effect: the term $D \cdot Q$ defines the actual "effective knowledge contribution" generated. This theoretically proves that high-density knowledge flows (high $Q$ values) can significantly reduce absolute dependence on compute resources; by improving data purity, performance can overtake larger models without increasing $D$.

### 2.4 The Perspective of This Paper: The Four-Part Suite of Knowledge Extraction Efficiency

From Codatta's perspective, we observe that the competition in large models has entered a "deep water zone," moving from a "game of scale" to a "game of quality." The evolution of dataset work is essentially a history of continuous optimization in **Knowledge Extraction Efficiency**.

Knowledge extraction efficiency is not just about the contribution rate of a unit token to the decline of the loss function; it also involves the depth of the model's absorption of complex logic, human aesthetics, and physical laws. To break through the physical limits of the "Data Wall", data engineering is undergoing four paradigm shifts:

1. **Large-Scale Data Crawling**: Solving the problem of starting from zero for $D$, masking quality defects through quantitative redundancy.
2. **Fine-Grained Manual Annotation**: Forcing an increase in $Q$ at critical nodes through strong human intervention.
3. **AI-Generated Data**: Breaking through human productivity bottlenecks to achieve automated expansion of high-quality knowledge.
4. **Human-Machine Collaborative Evolution**: Building a self-adaptive closed loop to achieve a spiral ascent of intelligence and data.

This paper will explore the evolution of the data knowledge layer in the AGI era based on this context.

## 3. Stage I: Large-Scale Indiscriminate Crawling — Scale Worship and Primitive Accumulation

Between 2018 and 2022, dataset engineering was in a "harvesting" stage of accumulation. The core philosophy of this period was to counter extremely low Signal-to-Noise Ratios (SNR) with massive physical redundancy (Quantity), striving to achieve preliminary coverage of the digital traces of human civilization within an unsupervised learning framework.

### 3.1 Text Dialogue: Distributed Extraction of Massive Web Data

In the field of natural language, the core task was to build automated crawling and coarse cleaning pipelines targeting global internet public domain data.

**Representative Works (GPT Series, C4)**: 

- GPT-3 [13] and its predecessors established the paradigm of using Common Crawl as the core source, harvesting exascale raw text through PageRank scores or social platform filtering mechanisms.

{::nomarkdown}
<figure>
  <img src="/assets/Sky/3.png" alt="Figure 3" />
  <figcaption><a href="https://proceedings.neurips.cc/paper_files/paper/2020/file/1457c0d6bfcb4967418bfb8ac142f64a-Paper.pdf">https://proceedings.neurips.cc/paper_files/paper/2020/file/1457c0d6bfcb4967418bfb8ac142f64a-Paper.pdf</a></figcaption>
</figure>
{:/nomarkdown}

- C4 (Colossal Clean Crawled Corpus) [14] provided the first industrial-grade cleaned TB-scale corpus for the T5 model, defining standardized cleaning processes based on heuristic rules (e.g., length, word frequency, sensitive words).

**Bottleneck**: **Cognitive Mediocrity**. Data processing at this stage was still in "coarse filtering," unable to identify factual errors at the semantic level. This indiscriminate ingestion resulted in models with fluent expression but a high propensity for "hallucinations" caused by corpus noise.

### 3.2 Code Generation: Full Dump of Public Code Repositories

The initial logic of the code track was to treat programming languages as special text with strong topological constraints, obtaining syntax distribution through "full mirroring" of public hosting platforms.

**Representative Works (Codex, The Stack)**: 

- Codex [15] relied on the indiscriminate crawling of 159GB of GitHub public repositories, proving that large-scale autoregressive pre-training allows models to automatically acquire complex programming syntax.

- The Stack [16], as the largest open-source code dataset, systematically completed deduplication and license compliance cleaning across languages and versions for the first time.

{::nomarkdown}
<figure>
  <img src="/assets/Sky/4.png" alt="Figure 4" />
  <figcaption><a href="https://arxiv.org/pdf/2211.15533">https://arxiv.org/pdf/2211.15533</a></figcaption>
</figure>
{:/nomarkdown}

**Bottleneck**: Logical Dilution. First-stage code data generally lacked project-level dependency information. Because pre-training data was filled with redundant copies and low-quality scripts, models could generate local function snippets but struggled to understand complex long-range logical dependencies.

### 3.3 Image Generation: Wide-Area Harvesting Based on Web Multimodal Pairs

Breakthroughs in the visual field stemmed from the automated, large-scale mining of the "image-text symbiosis" relationship on the internet, with the core being the establishment of preliminary cross-modal mapping.

**Representative Works (LAION-5B, CLIP)**: LAION-5B [17] established the first 5-billion-scale public image-text pair dataset in human history. Its core innovation was using the CLIP [18] model to automatically assign cosine similarity scores to raw web Alt-text.

{::nomarkdown}
<figure>
  <img src="/assets/Sky/5.png" alt="Figure 5" />
  <figcaption><a href="https://proceedings.mlr.press/v139/radford21a/radford21a.pdf">https://proceedings.mlr.press/v139/radford21a/radford21a.pdf</a></figcaption>
</figure>
{:/nomarkdown}

**Bottleneck**: **Semantic Misalignment**. Image-text pairs during this period were typical "weak supervision" signals. Due to the randomness and noise of raw Alt-text, models performed poorly when handling complex spatial orientation and precise attribute binding.

### 3.4 Video Generation: Primitive Accumulation of Visual Redundant Data

Video datasets faced the most severe "knowledge extraction efficiency" challenges in the first stage; the semantic dimension of the data was extremely sparse and lacked dynamic annotation.

**Representative Works (WebVid-10M, Kinetics)**: 

- WebVid-10M [19] provided the core visual power for early video generation models by crawling commercial stock footage and its accompanying descriptions. 

- Kinetics-400 [20], though originating from action recognition tasks, established the "short video-action label" paradigm, laying the foundation for the model's initial motion priors.

{::nomarkdown}
<figure>
  <img src="/assets/Sky/6.png" alt="Figure 6" />
  <figcaption><a href="https://arxiv.org/pdf/1705.06950">https://arxiv.org/pdf/1705.06950</a></figcaption>
</figure>
{:/nomarkdown}

**Bottleneck**: Disconnection from Physical Dynamics. Raw descriptions or ASR captions often failed to precisely match the spatiotemporal changes in the footage. Models learned pixel displacement rather than true physical causality, resulting in videos with inconsistent motion or artifacts that violated common sense.

## 4. Stage II: Fine-Grained Manual Annotation and Alignment Engineering — Capturing Intent

{::nomarkdown}
<figure>
  <img src="/assets/Sky/7.png" alt="Figure 7" />
  <figcaption><a href="https://epoch.ai/blog/will-we-run-out-of-data-limits-of-llm-scaling-based-on-human-generated-data">https://epoch.ai/blog/will-we-run-out-of-data-limits-of-llm-scaling-based-on-human-generated-data</a></figcaption>
</figure>
{:/nomarkdown}

If Scaling Laws pointed the direction for large models, then the predictions of the research institution Epoch AI [21] set the physical finish line for this race. In their core report, researchers systematically calculated the global stock of human-generated digital knowledge, revealing an alarming "Data Wall" model:

- **Stock Accounting**: The study estimates that the total amount of high-quality public text data (books, academic papers, curated websites) generated by humans worldwide is approximately 10T to 40T tokens; the total public text, including low-quality social media, is about 300T tokens.

- **Depletion Node**: According to the current Chinchilla paradigm of synchronous compute and data scaling, high-quality text data is expected to be **completely "consumed" between 2026 and 2028**; total public text data will hit the ceiling between 2030 and 2032.

- **Scaling Paradox**: This prediction directly challenges Kaplan's original law—when the growth rate of data $D$ cannot keep up with the exponential growth of compute $C$, simply increasing training epochs (Multi-epoch) will lead the model into "catastrophic overfitting."

Between 2022 and 2023, the industry underwent a profound paradigm shift: dataset engineering moved from pursuing "physical quantity" to "knowledge density." If the first stage was "panning for gold in the sand," the second stage was "ultra-precision alchemy." Fine-grained manual annotation was no longer just about providing labels; it became the key yardstick for unlocking model Intent Alignment and complex logical reasoning.

### 4.1 Text Dialogue: Instruction Following and Human Preference Alignment

In the domain of natural language, the focus of data engineering shifted from "autoregressive pre-training" to Instruction Fine-Tuning (SFT) and Reinforcement Learning from Human Feedback (RLHF), aiming to resolve the issue of "cognitive and instruction misalignment."

**Representative Works**: 

- InstructGPT [22] established the RLHF paradigm, proving that with a very small amount (approx. 13,000) of high-quality human-written instructions, a model could leapfrog models pre-trained on hundreds of billions of tokens in following human intent.

{::nomarkdown}
<figure>
  <img src="/assets/Sky/8.png" alt="Figure 8" />
  <figcaption><a href="https://proceedings.neurips.cc/paper_files/paper/2022/file/b1efde53be364a73914f58805a001731-Paper-Conference.pdf">https://proceedings.neurips.cc/paper_files/paper/2022/file/b1efde53be364a73914f58805a001731-Paper-Conference.pdf</a></figcaption>
</figure>
{:/nomarkdown}

- Meta's Llama series alignment engineering [23] detailed the quantitative scaling of human preference data (PPO/DPO), building millions of adversarial game data entries and establishing industrial standards for open-source model alignment.

**Bottleneck**: Subjective Bias and Evaluative Collapse. Manual annotation relies heavily on the subjective judgment of annotators, leading to significant reliability noise. Annotators also tend to give high scores to "verbose but logically flawed" responses, a "preference drift" that limits further exploration of deep logic.

### 4.2 Code Generation: The Leap from Syntax Completion to Engineering Problem Solving

The code track achieved a transition from "mimicking grammatical structures" to "implementing algorithmic logic" by introducing expert-level corpora with strong logical constraints.

**Representative Works**: 

- HumanEval [15] & MBPP [24]: These two hand-written evaluation sets released by OpenAI and Google, though containing only a few hundred entries, had every line of code human-verified and validated via Unit Tests. They became global standard metrics for measuring a code model's shift from "plagiarism" to "reasoning."

{::nomarkdown}
<figure>
  <img src="/assets/Sky/9.png" alt="Figure 9" />
  <figcaption><a href="https://arxiv.org/pdf/2107.03374">https://arxiv.org/pdf/2107.03374</a></figcaption>
</figure>
{:/nomarkdown}

- APPS (Automated Programming Progress Standard) [25]: This dataset marked the intervention of "expert knowledge engineering." By collecting 10,000 programming problems with complex descriptions and multi-solution coverage, it forced the model to absorb high-order logic such as algorithmic complexity and edge-case handling during training.

**Bottleneck**: Expert Productivity Ceiling. Talent capable of writing high-quality test cases and understanding complex architectures is extremely scarce and expensive. Manual annotation shows a sharp negative correlation between coverage and cost when dealing with system-level code involving cross-file, ultra-long context.

### 4.3 Image Generation: Fine-Grained Alignment and Aesthetic Quantitative Modeling

The image field realized that the "weakly aligned" labels based on web Alt-text in the first stage could not support the model's understanding of spatial orientation, aesthetic detail, and precise editing.

**Representative Works**:

- Pick-a-Pic [26]: This was the visual domain's first large-scale human preference dataset (containing over 500,000 human comparative evaluations of images). It introduced RLHF into the text-to-image field, enabling models to begin understanding what constitutes "better composition" and "more precise prompt following."

{::nomarkdown}
<figure>
  <img src="/assets/Sky/10.png" alt="Figure 10" />
  <figcaption><a href="https://proceedings.neurips.cc/paper_files/paper/2023/file/73aacd8b3b05b4b503d58310b523553c-Paper-Conference.pdf">https://proceedings.neurips.cc/paper_files/paper/2023/file/73aacd8b3b05b4b503d58310b523553c-Paper-Conference.pdf</a></figcaption>
</figure>
{:/nomarkdown}

- MagicBrush [27]: Built by professional photo editors, this dataset contains editing sequences including "Masks" and "multi-round instructions." It marked the model's transition from "one-shot generation" to capturing "continuous creative intent."

**Bottleneck**: Lack of Spatial Semantic Expression. Humans struggle to precisely describe complex spatial coordinates and physical textures using natural language. This "language-visual" information entropy loss causes models to retain a sense of logical incongruity in complex multi-object interaction scenes.

### 4.4 Video Generation: Interaction Trajectories and Embodied Alignment of Physical Common Sense

The greatest challenge in the video domain was the severe disconnection between raw descriptions and on-screen actions in the first stage. The focus of this stage shifted to capturing high-value Action-Logic through human demonstrations.

**Representative Works**: 

- RT-1 (Robotics Transformer) [28]: Through 17 months of human Teleoperation data collection, RT-1 captured extremely high-quality "instruction-action-vision" alignment trajectories. This proved that high-quality manual operation data is far more efficient than redundant raw video in improving video/action logic.

{::nomarkdown}
<figure>
  <img src="/assets/Sky/11.png" alt="Figure 11" />
  <figcaption><a href="https://arxiv.org/pdf/2212.06817">https://arxiv.org/pdf/2212.06817</a></figcaption>
</figure>
{:/nomarkdown}

- Mobile ALOHA [29]: By using low-cost physical tethering operations, data for complex long-term tasks such as cooking and cleaning was acquired. Its core contribution proved that through 50 high-quality human demonstrations paired with Co-training, a model could achieve extremely high success rates in complex physical environments.

**Bottleneck**: Missing Annotation under the Curse of Dimensionality. Video annotation involves the superposition of time, space, and physical causality. Manually annotating attributes like "gravity, collision, inertia" for every frame is cost-prohibitive, leaving models lacking true physical common sense in dynamic scenarios.

## 5. Stage III: AI-Synthetic Data and Self-Evolution

After preliminary alignment through manual annotation, the industry quickly hit the "productivity ceiling." Faced with thirst for tens of billions or even hundreds of billions of high-$Q$ data entries, expert manual writing alone could not sustain the continuous performance leaps of Scaling Laws. 

To break this bottleneck, dataset engineering entered its third stage in late 2023: Synthetic Data Generation. The core logic here is "the strong training the weak" or "self-evolution"—using already aligned high-performance models as productivity tools to achieve industrial-scale expansion of high-quality knowledge.

### 5.1 Text Dialogue: From "Self-Instruct" to Textbook-Quality Synthesis

In the domain of natural language, the core goal of synthetic data is to simulate high-quality logical deduction processes, filling the "knowledge density" missing from internet data.

**Representative Works**:

- Self-Instruct [30]: This framework proposed by the University of Washington established the "seed instruction-AI derivation" paradigm, proving that models can improve downstream task performance by self-generating instructions and corresponding answers.

{::nomarkdown}
<figure>
  <img src="/assets/Sky/12.png" alt="Figure 12" />
  <figcaption><a href="https://aclanthology.org/2023.acl-long.754.pdf">https://aclanthology.org/2023.acl-long.754.pdf</a></figcaption>
</figure>
{:/nomarkdown}

- Phi Series (Textbooks Are All You Need) [31]: Microsoft's research demonstrated the ultimate potential of synthetic data. By using GPT-4 to generate "textbook-level" high-density logic data, the Phi model, despite having a very small parameter count, outperformed general models several times its size in reasoning capabilities.

**Bottleneck**: Semantic Homogeneity. Synthetic data often exhibits high stylistic consistency and lacks the long-tail distribution and emotional granularity of human language, making models perform poorly in extreme non-standard real-world scenarios.

### 5.2 Code Generation: Evolved Instructions and Reverse Engineering Reconstruction

The code track leveraged AI's strong understanding of structured logic to achieve an evolution from "syntax collection" to "deep logical derivation."

**Representative Works**:

- Evol-Instruct (WizardCoder) [32]: By performing "depth evolution" (adding constraints, complicating logic) and "breadth evolution" (mutating new topics) on original code instructions, AI self-derived tens of thousands of engineering-level challenges, significantly improving the model's success rate in complex algorithmic implementation.

{::nomarkdown}
<figure>
  <img src="/assets/Sky/13.png" alt="Figure 13" />
  <figcaption><a href="https://arxiv.org/pdf/2306.08568">https://arxiv.org/pdf/2306.08568</a></figcaption>
</figure>
{:/nomarkdown}

- OSS-Instruct [33]: Adopting a "reverse thinking" path, it starts from real GitHub code snippets and lets the model back-calculate the complex programming problems they might solve. This method of anchoring real code while synthesizing logical problems greatly alleviated the disconnection between synthetic code and real-world engineering.

**Bottleneck**: Missing Logical Closed-Loop Verification. While syntactically perfect, without compiler and test case involvement, AI easily generates code with "infinite loops" or latent vulnerabilities, causing serious logical pollution.

### 5.3 Image Generation: From Alt-text Crawling to Semantic Re-captioning

The image field utilized "Re-captioning" technology to thoroughly resolve the "weak alignment" issues left over from the first stage.

**Representative Works**:

- DALL-E 3 Re-captioning [34]: OpenAI's technical report revealed the underlying code of its performance leap—abandoning original internet Alt-text and using a trained Captioner to re-generate descriptions for billions of images. Experiments proved that 95% high-quality synthetic long descriptions could produce a qualitative change in the model's ability to follow long and difficult prompts.

{::nomarkdown}
<figure>
  <img src="/assets/Sky/14.png" alt="Figure 14" />
  <figcaption><a href="https://cdn.openai.com/papers/dall-e-3.pdf">https://cdn.openai.com/papers/dall-e-3.pdf</a></figcaption>
</figure>
{:/nomarkdown}

**Bottleneck**: Inheritance of Visual Hallucinations. The visual limitations of the Captioner model (e.g., misjudging counts or fine object relationships) are permanently solidified in the synthetic annotations, resulting in images that are aesthetically excellent but physically flawed at the micro-level.

### 5.4 Video Generation: Dynamic Differential Annotation and Spatiotemporal Structural Stitching

During the synthetic data stage, the video track focused on overcoming the challenges of "long-term coherence" and "high-density spatiotemporal descriptions."

**Representative Works**:

- ShareGPT4Video [35]: Proposed a Differential Sliding Window (DiffSW) annotation strategy. AI focuses on describing "changes" between frames rather than general summaries. This extreme depiction of minute action details and camera movement provided the core momentum for the model to understand physical motion vectors.

{::nomarkdown}
<figure>
  <img src="/assets/Sky/15.png" alt="Figure 15" />
  <figcaption><a href="https://proceedings.neurips.cc/paper_files/paper/2024/file/22a7476e4fd36818777c47e666f61a41-Paper-Datasets_and_Benchmarks_Track.pdf">https://proceedings.neurips.cc/paper_files/paper/2024/file/22a7476e4fd36818777c47e666f61a41-Paper-Datasets_and_Benchmarks_Track.pdf</a></figcaption>
</figure>
{:/nomarkdown}

- MiraData [36]: Through "Smart Stitching" logic, fragmented clips were synthesized and restored into highly structured, high-dynamic long-take data lasting up to 72 seconds. This paradigm directly defined the requirements for "long-term stability" in video data for the Sora era.

**Bottleneck**: "Data Nihilism" of Physical Common Sense. Despite dense descriptions, synthetic data is still a statistical fit of pixel movement. AI annotation cannot fundamentally understand principles like gravity or inertia, leading to "teleportation" or "collapse" at complex interaction nodes in long videos.

## 6. Stage IV: Human-Machine Collaborative Evolution — Self-Play and Closed-Loop Ecosystems

While AI-synthetic data alleviated productivity anxiety, its hidden systemic risks were rigorously proven by academia in 2024. A study in Nature pointed out that when models iterate long-term on synthetic data lacking human long-tail distributions, it triggers Model Collapse [37]. This manifests as cognitive convergence and shrinkage: rare event distributions disappear, and eventually, the model outputs meaningless fuzzy noise.

To combat this "cognitive entropy," Stage IV introduced Human-in-the-Loop (HITL). In this paradigm, the human role upgrades from a low-level data mover to an evaluator, rule-setter, and Truth Anchor, ensuring that as the model evolves at scale, it does not deviate from the path of truth through an adaptive feedback loop.

### 6.1 Text Dialogue: Dynamic Distillation of Collective Intelligence and Value Alignment

In the domain of general semantics, data work is shifting from "single-point annotation" to "real-time evolution of a global knowledge ecosystem," emphasizing the integration of diverse cognitions.

**Representative Works**:

- RLAIF (Constitutional AI) [38]: Proposed by Anthropic and widely adopted by the industry. It uses a human-defined "Constitution" as a top-level principle to guide model self-reflection and alignment, achieving a balance between human values and AI production efficiency.

{::nomarkdown}
<figure>
  <img src="/assets/Sky/16.png" alt="Figure 16" />
  <figcaption><a href="https://ai-plans.com/file_storage/4f32fa39-3a01-46c7-878e-c92b7aa7165f_2212.08073v1.pdf">https://ai-plans.com/file_storage/4f32fa39-3a01-46c7-878e-c92b7aa7165f_2212.08073v1.pdf</a></figcaption>
</figure>
{:/nomarkdown}

- SuperBrain Framework [39]: This framework continuously generates domain-specific cognitive signatures through millions of personalized dialogue units (sub-brains) formed by human experts and LLMs. These signatures are aggregated and distilled via swarm intelligence algorithms, finally converging into a multi-disciplinary "Master Brain," marking a new stage of socialized collaboration in data work.

**Bottleneck**: Cognitive Conflict and Evaluative Consistency. As models delve into vertical fields, how to fairly assign weights to conflicting knowledge between different experts (e.g., different schools of medicine) remains a core challenge.

### 6.2 Code Generation: Reinforcement Learning from Execution Feedback (RLEF)

In the highly logical code track, data engineering has evolved into building physically constrained environments to achieve the model's "evolution through failure."

**Representative Works**:

- DeepSeek-Coder-V2 [40] / DeepSeek-V3 [41]: As milestones in the code field, their core contribution lies in establishing the Reinforcement Learning from Execution Feedback (RLEF) paradigm. Each piece of generated code is run in a sandbox, and compiler error messages are fed directly back into the training loop, allowing the model to acquire extremely high robustness through continuous "error-correction."

- AlphaCode 2 [42]: Utilizing large-scale ensembles and formal verification technologies, it filters through a closed loop of human-designed test cases, significantly reducing hallucination rates and achieving competition-level code-solving capabilities.

{::nomarkdown}
<figure>
  <img src="/assets/Sky/17.png" alt="Figure 17" />
  <figcaption><a href="https://storage.googleapis.com/deepmind-media/AlphaCode2/AlphaCode2_Tech_Report.pdf">https://storage.googleapis.com/deepmind-media/AlphaCode2/AlphaCode2_Tech_Report.pdf</a></figcaption>
</figure>
{:/nomarkdown}

**Bottleneck**: Evaluative Vacuum for Long-Range Architecture. RLEF primarily solves function-level correctness; automatic feedback systems still struggle to provide precise quality assessments for global logic in complex architectures and cross-file dependencies.

### 6.3 Image Generation: From Aesthetic Preference to Fine-Grained Value Alignment

The visual field is working on establishing a continuously iterative "aesthetic and logical filter" through human feedback.

**Representative Works**:

- ImageReward [43]: This is the visual domain's first general human preference reward model. It evaluates not only image aesthetics but also, more importantly, the accuracy of "Prompt Following," resolving common semantic shift issues in AI-generated images.

{::nomarkdown}
<figure>
  <img src="/assets/Sky/18.png" alt="Figure 18" />
  <figcaption><a href="https://arxiv.org/pdf/2304.05977">https://arxiv.org/pdf/2304.05977</a></figcaption>
</figure>
{:/nomarkdown}

- Pick-a-Pic V2 [44]: Through a closed loop of real-time feedback from large-scale users, the model can dynamically perceive subtle drifts in human aesthetics. Humans act as "boundary guards," demarcating ethical and aesthetic red lines for model creation by labeling edge cases.

**Bottleneck**: Aesthetic Unification Tendency. Over-reliance on mainstream human preference (RLHF) might lead the model toward a "pleasing aesthetic" that satisfies the masses but loses the uniqueness and visual impact required for artistic creation.

### 6.4 Video Generation: Spatiotemporal Stability and Physical Truth Closed-Loop

In this stage, the video track focuses on the "physical coherence" challenge by introducing deep human review of spatiotemporal logic.

**Representative Works**:

- Movie Gen [45]: This SOTA model released by Meta demonstrates high human-machine collaborative attributes. By introducing fine-grained human scoring of motion vectors and spatiotemporal coherence into the data pipeline, it established data standards for movie-level video synthesis.

{::nomarkdown}
<figure>
  <img src="/assets/Sky/19.png" alt="Figure 19" />
  <figcaption><a href="https://arxiv.org/pdf/2410.13720">https://arxiv.org/pdf/2410.13720</a></figcaption>
</figure>
{:/nomarkdown}

- Sora-style Feedback Loop [46]: Although its data details remain relatively closed, the industry consensus is that a large amount of human feedback based on physical laws (Human-corrected Physics) was introduced during training to correct common issues like "limb collapse" and "causality inversion" in video generation.

**Bottleneck**: Missing Annotation for High-Dimensional Interaction. Ensuring that a model's generation of complex physical interactions (collisions, fluids) is not just "looking right" but "logically right" without real physical simulation feedback remains the focus of this paradigm.

## 7. Retrospect and Reflection: The Nonlinear Spiral of Data Evolution and Human-Machine Symbiosis

{::nomarkdown}
<figure>
  <img src="/assets/Sky/20.png" alt="Figure 20" />
</figure>
{:/nomarkdown}

After reviewing the four stages, from "large-scale crawling" to "human-machine collaboration," we need to step outside a single timeline and re-examine this data paradigm revolution from a systems theory perspective.

### 7.1 Nonlinear Interlacing: Evolution is not a simple "metabolism"

Although we have divided data development into four stages, in actual industrial practice, these four paradigms are not mutually exclusive replacements but rather exhibit characteristics of superposition and spiral interlacing.

- **Paradigm Parallelism**: Today, now that 2025 has ended, even top-tier models in Stage IV (closed-loop evolution) still require massive public domain data from Stage I as a cognitive background and the expert gold standards from Stage II as a logical skeleton.

- **Spiral Ascent**: Every appearance of a new paradigm is to solve the legacy issues of the previous one (e.g., solving the productivity bottleneck of Stage II through Stage III's synthetic data). This evolution is not a linear replacement, but rather the rebirth of old data processing techniques at higher dimensions alongside the evolution of algorithmic architectures.

### 7.2 Dialectical Unity: "Mutual Causality" of Manual Annotation and AI Synthesis

There was once a misunderstanding in the industry that synthetic data would eventually replace manual annotation. However, from an information theory perspective, the two are essentially a relationship of "high-entropy source" and "scale lever."

- **Manual Annotation is the "Injection of Entropy"**: Human experts' thought paths (CoT) and aesthetic intuitions are high-entropy, high-value raw signals. As "**Truth Anchors**," they establish the upper limit and direction of intelligence.

- **AI Synthesis is the "Amplification of Efficiency"**: AI utilizes human-provided seed instructions to diffuse scarce expert knowledge into a trillion-parameter space through variants, combinations, and reverse engineering.

- **The Essence of Stage IV**: Human-machine collaboration is the ultimate manifestation of this symbiotic relationship. It no longer debates who replaces whom but builds a closed-loop system: humans define rules and boundaries, AI performs exhaustive search and evolution within those rules, and humans conduct high-level audits of the evolutionary results.

## 8. Industry Response: Transforming from "Resource Supplier" to "Knowledge Architect"

In the grand trend of human-machine collaborative evolution, the AI data service industry is undergoing a hard-core transformation from a "labor-intensive resource industry" to "technology-intensive knowledge engineering." Data service providers are no longer merely providing fuel; instead, they need to build dynamic architectures that support the continuous emergence of intelligence.

### 8.1 Breaking the "Expert Bottleneck": Building Incentive-Compatible Global Knowledge Extraction Networks

Facing the thirst for expert knowledge driven by high-order logic, traditional annotation factories will find it increasingly difficult to meet the demands of Stage II and Stage IV.

- **Core Challenge**: The value of a top expert's time far exceeds traditional annotation pricing, and their knowledge is often unstructured.

- **Industry Path**: Building decentralized expert collaboration protocols. Data providers should utilize game theory models (such as incentive mechanisms based on **PoK**—Proof of Knowledge) to connect "long-tail experts" scattered across the globe into the training loop. The goal is no longer to acquire simple "labels," but to extract unstructured logical signatures used by experts to solve complex engineering problems. This requires data platforms to possess the capability to extract "high-value, Out-of-Distribution (**OOD**)" knowledge from high-salaried professionals with low loss.

### 8.2 Countering "Cognitive Collapse": Leveraging Human Truth Anchors as Regularization

The flood of synthetic data brought by Stage III has led to a risk of "averaging" model cognition.

- **Core Challenge**: Because synthetic data lacks the randomness of human cognition, it can cause model parameters to fall into **Variance Collapse** during training.

- **Industry Path**: Utilizing high-quality, real human corpora as a **Strong Regularizer** in model training. The value of data service providers will be reflected in providing anchor sets with **Distribution Preservation** capabilities. Through active learning, human samples that can maximize the model's **Information Gain** are filtered and injected into synthetic data streams as "truth persistence," ensuring the model does not lose its sensitivity to the complex real world during self-iteration.

### 8.3 Decoupling Knowledge and Parameters: Promoting "Data as Protocol"

The current characteristic where large models are "outdated upon pre-training" forces data services to transform from static delivery to dynamic patching.

- **Core Challenge**: Forcibly compressing massive amounts of dynamic knowledge into model **Weights** results in expensive update costs and the risk of catastrophic forgetting.

- **Industry Path**: Promoting the decoupling of the inference layer and the knowledge layer to build dynamic knowledge protocols.

- **Core Insight**: Future data providers will no longer deliver "offline compressed packages," but rather "real-time trusted knowledge patches." Through standardized knowledge layer protocols, large models acting as inference engines can call and verify external knowledge vetted by experts in real-time. This "**Knowledge as a Service (KaaS**)**" model enables second-level synchronization of capabilities without retraining, completely restructuring the efficiency of data flow.

## 9. Conclusion and Outlook: From "Data Fuel" to the Digital Foundation of Intelligent Civilization

Looking back from this point in time, now that 2025 has ended, the evolutionary history of large model dataset engineering is essentially a history of civilization in which humans continuously abstract, refine, and bestow "intent" upon machines.

### 9.1 The Return of Cognition: From Scale Worship to Knowledge Rationality

We have moved from the "quantity is king" scale worship of the GPT-3 era to the current extreme pursuit of "knowledge density." This paradigm shift tells us: the upper limit of intelligence does not depend on how many bytes we feed the model, but on how much high-quality cognition with logical entropy we extract. Data is no longer a cold "raw production material," but a digital preservation of the essence of human wisdom.

### 9.2 Morphological Evolution: From "Static Warehouses" to "Dynamic Protocols"

Looking ahead, datasets will completely shed the obsolete form of "offline files." With the decoupling of the parameter layer and the knowledge layer, data will evolve into a "dynamic knowledge protocol." Future AGI will access a globally and real-time updated knowledge network just like plugging into the power grid, achieving second-level synchronization of capabilities and real-time verification of truth. The role of data service providers will also be reconstructed from "fuel suppliers" into "knowledge architects" and "logical judges."

### 9.3 Ultimate Vision: Building the "Knowledge Bank" of the AGI Era

In the interlacing of the "Data Wall" crisis and the flood of synthetic data, building a transparent, verifiable, and high-knowledge-density infrastructure has become the common mission of the entire industry. Our goal is not only to increase model scores on benchmarks, but to build a solid "defense tower" for the logic and aesthetics of human civilization in virtual digital space. On the journey toward AGI, dataset engineering will become the storage device for the logic of human civilization. We should guard the truth anchors with reverence, providing an inexhaustible and consistently authentic source of knowledge for the continuous emergence of intelligence.

## References

[1] MOORE O, EAGLE K. The top 100 gen AI consumer apps: generation 5 [EB/OL]. (2025-03-05). <a href="https://a16z.com/100-gen-ai-apps-5/">https://a16z.com/100-gen-ai-apps-5/</a>.

[2] FIRST PAGE SAGE. Google vs ChatGPT market share: 2026 report [EB/OL]. (2026-01-05). <a href="https://firstpagesage.com/seo-blog/google-vs-chatgpt-market-share-report/">https://firstpagesage.com/seo-blog/google-vs-chatgpt-market-share-report/</a>.

[3] COGNITION AI. Introducing Devin, the first AI software engineer [EB/OL]. (2024-03-12). <a href="https://www.cognition.ai/blog/introducing-devin">https://www.cognition.ai/blog/introducing-devin</a>.

[4] Jimenez C E, Yang J, Wettig A, et al. Swe-bench: Can language models resolve real-world github issues?[J]. arXiv preprint arXiv:2310.06770, 2023.

[5] Brooks T, Peebles B, Holmes C, et al. Video generation models as world simulators[J]. OpenAI Blog, 2024, 1(8): 1.

[6] Abramson J, Adler J, Dunger J, et al. Accurate structure prediction of biomolecular interactions with AlphaFold 3[J]. Nature, 2024, 630(8016): 493-500.

[7] Guo D, Yang D, Zhang H, et al. Deepseek-r1: Incentivizing reasoning capability in llms via reinforcement learning[J]. arXiv preprint arXiv:2501.12948, 2025.

[8] NVIDIA. NVIDIA Ethernet networking accelerates world's largest AI supercomputer, built by xAI [EB/OL]. (2024-10-28). <a href="https://nvidianews.nvidia.com/news/spectrum-x-ethernet-networking-xai-colossus">https://nvidianews.nvidia.com/news/spectrum-x-ethernet-networking-xai-colossus</a>.

[9] MCKINSEY & COMPANY. The state of AI in 2025: agents, innovation, and transformation [EB/OL]. (2025-11-05). <a href="https://www.mckinsey.com/capabilities/quantumblack/our-insights/the-state-of-ai">https://www.mckinsey.com/capabilities/quantumblack/our-insights/the-state-of-ai</a>.

[10] Kaplan J, McCandlish S, Henighan T, et al. Scaling laws for neural language models[J]. arXiv preprint arXiv:2001.08361, 2020.

[11] Hoffmann J, Borgeaud S, Mensch A, et al. Training compute-optimal large language models (2022)[J]. arXiv preprint arXiv:2203.15556, 2022.

[12] Subramanyam A, Chen Y, Grossman R L. Scaling laws revisited: modeling the role of data quality in language model pretraining[J]. arXiv preprint arXiv:2510.03313, 2025.

[13] Brown T, Mann B, Ryder N, et al. Language models are few-shot learners[J]. Advances in neural information processing systems, 2020, 33: 1877-1901.

[14] Raffel C, Shazeer N, Roberts A, et al. Exploring the limits of transfer learning with a unified text-to-text transformer[J]. Journal of machine learning research, 2020, 21(140): 1-67.

[15] Chen M. Evaluating large language models trained on code[J]. arXiv preprint arXiv:2107.03374, 2021.

[16] Kocetkov D, Li R, Allal L B, et al. The stack: 3 tb of permissively licensed source code[J]. arXiv preprint arXiv:2211.15533, 2022.

[17] Schuhmann C, Beaumont R, Vencu R, et al. Laion-5b: An open large-scale dataset for training next generation image-text models[J]. Advances in neural information processing systems, 2022, 35: 25278-25294.

[18] Radford A, Kim J W, Hallacy C, et al. Learning transferable visual models from natural language supervision[C]//International conference on machine learning. PmLR, 2021: 8748-8763.

[19] Bain M, Nagrani A, Varol G, et al. Frozen in time: A joint video and image encoder for end-to-end retrieval[C]//Proceedings of the IEEE/CVF international conference on computer vision. 2021: 1728-1738.

[20] Kay W, Carreira J, Simonyan K, et al. The kinetics human action video dataset[J]. arXiv preprint arXiv:1705.06950, 2017.

[21] VILLALOBOS P, HO A, HEIM L, et al. Will we run out of data? Limits of LLM scaling based on human-generated data [EB/OL]. (2022-11-24). <a href="https://epoch.ai/blog/will-we-run-out-of-data-limits-of-llm-scaling-based-on-human-generated-data">https://epoch.ai/blog/will-we-run-out-of-data-limits-of-llm-scaling-based-on-human-generated-data</a>.

[22] Ouyang L, Wu J, Jiang X, et al. Training language models to follow instructions with human feedback[J]. Advances in neural information processing systems, 2022, 35: 27730-27744.

[23] Touvron H, Martin L, Stone K, et al. Llama 2: Open foundation and fine-tuned chat models[J]. arXiv preprint arXiv:2307.09288, 2023.

[24] Austin J, Odena A, Nye M, et al. Program synthesis with large language models[J]. arXiv preprint arXiv:2108.07732, 2021.

[25] Hendrycks D, Basart S, Kadavath S, et al. Measuring coding challenge competence with apps[J]. arXiv preprint arXiv:2105.09938, 2021.

[26] Kirstain Y, Polyak A, Singer U, et al. Pick-a-pic: An open dataset of user preferences for text-to-image generation[J]. Advances in neural information processing systems, 2023, 36: 36652-36663.

[27] Zhang K, Mo L, Chen W, et al. Magicbrush: A manually annotated dataset for instruction-guided image editing[J]. Advances in Neural Information Processing Systems, 2023, 36: 31428-31449.

[28] Brohan A, Brown N, Carbajal J, et al. Rt-1: Robotics transformer for real-world control at scale[J]. arXiv preprint arXiv:2212.06817, 2022.

[29] Fu Z, Zhao T Z, Finn C. Mobile aloha: Learning bimanual mobile manipulation with low-cost whole-body teleoperation[J]. arXiv preprint arXiv:2401.02117, 2024.

[30] Wang Y, Kordi Y, Mishra S, et al. Self-instruct: Aligning language models with self-generated instructions[C]//Proceedings of the 61st annual meeting of the association for computational linguistics (volume 1: long papers). 2023: 13484-13508.

[31] Gunasekar S, Zhang Y, Aneja J, et al. Textbooks are all you need[J]. arXiv preprint arXiv:2306.11644, 2023.

[32] Luo Z, Xu C, Zhao P, et al. Wizardcoder: Empowering code large language models with evol-instruct[J]. arXiv preprint arXiv:2306.08568, 2023.

[33] Wei Y, Wang Z, Liu J, et al. Magicoder: Empowering code generation with oss-instruct[J]. arXiv preprint arXiv:2312.02120, 2023.

[34] Betker J, Goh G, Jing L, et al. Improving image generation with better captions[J]. Computer Science. <a href="https://cdn.openai.com/papers/dall-e-3.pdf">https://cdn.openai.com/papers/dall-e-3.pdf</a>, 2023, 2(3): 8.

[35] Chen L, Wei X, Li J, et al. Sharegpt4video: Improving video understanding and generation with better captions[J]. Advances in Neural Information Processing Systems, 2024, 37: 19472-19495.

[36] Ju X, Gao Y, Zhang Z, et al. Miradata: A large-scale video dataset with long durations and structured captions[J]. Advances in Neural Information Processing Systems, 2024, 37: 48955-48970.

[37] Shumailov I, Shumaylov Z, Zhao Y, et al. AI models collapse when trained on recursively generated data[J]. Nature, 2024, 631(8022): 755-759.

[38] Bai Y, Kadavath S, Kundu S, et al. Constitutional ai: Harmlessness from ai feedback[J]. arXiv preprint arXiv:2212.08073, 2022.

[39] Weigang L, Brom P C, Siefert L R. LLM-Assisted Iterative Evolution with Swarm Intelligence Toward SuperBrain[J]. arXiv preprint arXiv:2509.00510, 2025.

[40] Zhu Q, Guo D, Shao Z, et al. Deepseek-coder-v2: Breaking the barrier of closed-source models in code intelligence[J]. arXiv preprint arXiv:2406.11931, 2024.

[41] Liu A, Feng B, Xue B, et al. Deepseek-v3 technical report[J]. arXiv preprint arXiv:2412.19437, 2024.

[42] Leblond, R., Altché, F., Gimeno, F., Saade, A., Ruddock, A., Tallec, C., Powell, G., Grill, J.B., Mikuła, M., Lochbrunner, M., Mathieu, M., Caron, P., Shrivastava, D., Mitchell, E., Margand, G., Kelly, J., Sygnowski, J., Keeling, J., Chung, J., Kushman, N., Savinov, N., Yotov, P., Igwe, T.P., Stokowiec, W., Li, Y.L., . AlphaCode 2 technical report. URL: <a href="https://storage.googleapis.com/deepmind-media/AlphaCode2/AlphaCode2_Tech_Report.pdf">https://storage.googleapis.com/deepmind-media/AlphaCode2/AlphaCode2_Tech_Report.pdf</a>.

[43] Xu J, Liu X, Wu Y, et al. Imagereward: Learning and evaluating human preferences for text-to-image generation[J]. Advances in Neural Information Processing Systems, 2023, 36: 15903-15935.

[44] Kirstain Y, Polyak A, Singer U, et al. Pick-a-pic: An open dataset of user preferences for text-to-image generation[J]. Advances in neural information processing systems, 2023, 36: 36652-36663.

[45] Polyak A, Zohar A, Brown A, et al. Movie gen: A cast of media foundation models[J]. arXiv preprint arXiv:2410.13720, 2024.

[46] Brooks T, Peebles B, Holmes C, et al. Video generation models as world simulators[J]. OpenAI Blog, 2024, 1(8): 1.
