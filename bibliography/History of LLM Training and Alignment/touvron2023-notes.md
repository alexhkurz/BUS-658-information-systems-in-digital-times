# Llama 2: Open Foundation and Fine-Tuned Chat Models

**Authors:** Hugo Touvron, Louis Martin, Kevin Stone, Peter Albert, et al. (60+ authors)  
**Year:** 2023  
**Citation key:** `touvron2023`  
**PDF:** [arXiv](https://arxiv.org/pdf/2307.09288.pdf)  
**arXiv:** [2307.09288](https://arxiv.org/abs/2307.09288)  
**Google Scholar:** [Search](https://scholar.google.com/scholar?q=Llama+2+Open+Foundation+Fine-Tuned+Chat+Models+Touvron+2023)

## Summary

This paper introduces Llama 2, a collection of open-source pre-trained and fine-tuned large language models ranging from 7 billion to 70 billion parameters. The fine-tuned variants, called Llama 2-Chat, are optimised for dialogue use cases and achieve performance competitive with proprietary closed-source models. Crucially, Meta provides detailed documentation of their approach to fine-tuning and safety improvements, including supervised fine-tuning, reinforcement learning from human feedback (RLHF), safety-specific data collection, and red-teaming. The paper represents a significant contribution to open AI research by releasing both models and comprehensive technical details about alignment and safety methods, enabling the research community to build upon and improve these approaches whilst advancing responsible LLM development.

## Authors

**Hugo Touvron** — GenAI, Meta. Equal contribution, corresponding author. Lead researcher on Llama series.

**Thomas Scialom** — GenAI, Meta. Equal contribution, corresponding author.

**60+ co-authors from Meta GenAI** — Large collaborative effort spanning pre-training, fine-tuning, safety, infrastructure, and evaluation teams. Author contributions detailed in Section A.1 of the paper.

## Relevance to our project

### Open-Source AI Development
- Major contribution to open AI research and development
- Provides competitive alternative to proprietary models
- Enables broader community participation in LLM research

### Detailed Alignment Methodology
- Comprehensive documentation of RLHF process
- Details of safety data collection and red-teaming
- Transparency about alignment techniques and their limitations

### Responsible AI Development
- Emphasis on safety throughout development process
- Discussion of risks, mitigations, and responsible use guidelines
- Model cards and documentation supporting responsible deployment

### Fine-Tuning for Dialogue
- Detailed approach to creating chat-optimised variants
- Methods for improving helpfulness whilst maintaining safety
- Relevant to understanding how general models become assistants

### Community Impact
- Llama 2 became widely used in research and applications
- Spawned numerous derivatives and adaptations
- Demonstrated viability of open-source approach to frontier AI

## Key concepts

- **Open-source LLMs**: Models with weights publicly released for research and commercial use
- **RLHF pipeline**: Multi-stage process including SFT, reward modelling, and PPO optimisation
- **Safety alignment**: Specific techniques for reducing harmful outputs
- **Red-teaming**: Adversarial testing to identify failure modes
- **Helpfulness vs. safety trade-offs**: Balancing useful responses with avoiding harmful content

## Notes

Llama 2 was groundbreaking for bringing near-frontier LLM capabilities to the open research community. The paper is unusually detailed in documenting alignment methods, including specific prompts, data collection procedures, and iterative refinement processes. Meta's decision to openly release 70B parameter models with detailed technical documentation accelerated open LLM research. The paper honestly discusses limitations and ongoing challenges, particularly around safety. The RLHF approach uses human preferences to improve both helpfulness and safety, though the paper acknowledges these are not fully solved problems. Llama 2 became foundational for many open-source AI projects and research efforts.
