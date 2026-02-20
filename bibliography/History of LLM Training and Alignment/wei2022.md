# Chain-of-Thought Prompting Elicits Reasoning in Large Language Models

**Authors:** Jason Wei, Xuezhi Wang, Dale Schuurmans, Maarten Bosma, Brian Ichter, Fei Xia, Ed H. Chi, Quoc V. Le, Denny Zhou  
**Year:** 2022  
**Citation key:** `wei2022`  
**PDF:** [arXiv](https://arxiv.org/pdf/2201.11903.pdf)  
**NeurIPS:** [Proceedings](https://proceedings.neurips.cc/paper_files/paper/2022/hash/9d5609613524ecf4f15af0f7b31abca4-Abstract-Conference.html)  
**Google Scholar:** [Search](https://scholar.google.com/scholar?q=Chain-of-Thought+Prompting+Elicits+Reasoning+Large+Language+Models+Wei+2022)

## Summary

This influential paper introduces chain-of-thought (CoT) prompting, a simple method that dramatically improves large language models' ability to perform complex reasoning tasks. By providing a few examples that include intermediate reasoning steps (the "chain of thought") in the prompt, the authors show that sufficiently large language models can generate similar reasoning chains and significantly improve performance on arithmetic, commonsense, and symbolic reasoning tasks. The gains can be striking: prompting PaLM 540B with just eight CoT examples achieved state-of-the-art accuracy on the GSM8K maths benchmark, surpassing even fine-tuned GPT-3 with a verifier. Crucially, the reasoning abilities emerge naturally in large models through this prompting technique, without requiring additional training or architectural changes.

## Authors

**Jason Wei** — Google Research, Brain Team. Lead author. Research on prompting, reasoning, and scaling laws for language models. [Google Scholar](https://scholar.google.com/citations?user=wA5TK_0AAAAJ)

**Denny Zhou** — Google Research, Brain Team. Corresponding author. Research on reasoning, machine learning, and algorithmic foundations.

**Dale Schuurmans, Maarten Bosma, Brian Ichter, Fei Xia, Ed H. Chi, Quoc V. Le, Xuezhi Wang** — Google Research researchers with expertise spanning ML, robotics, NLP, and large-scale systems.

## Relevance to our project

### Emergent Abilities of LLMs
- Demonstrates that reasoning capabilities emerge in sufficiently large models
- Shows that prompting can elicit latent abilities without additional training
- Relevant to discussions of what LLMs can and cannot do

### Prompting as Alignment
- Chain-of-thought prompting makes model reasoning more transparent and interpretable
- Steering model behaviour through prompts rather than fine-tuning
- Relevant to alignment through improving output quality and controllability

### Implications for AI Capabilities
- Strong performance on mathematical reasoning challenges assumptions about LLM limitations
- Shows that explicit reasoning steps improve problem-solving
- Raises questions about the nature of reasoning in neural networks

### Educational and Practical Applications
- CoT prompting became widely adopted in practice
- Relevant for AI tutoring systems (showing work, explaining steps)
- Demonstrates importance of process over just final answers

## Key concepts

- **Chain-of-thought prompting**: Including intermediate reasoning steps in few-shot examples
- **Emergent abilities**: Capabilities that appear only in sufficiently large models
- **Few-shot learning**: Learning from small number of examples in prompt
- **Complex reasoning**: Multi-step problems requiring arithmetic, logic, or commonsense inference
- **Interpretability**: Making model reasoning process more transparent

## Notes

This paper was highly influential and sparked extensive follow-up research on prompting techniques, reasoning in LLMs, and emergent abilities. The method is remarkably simple—just show the model examples with reasoning steps—yet produces large improvements. This suggests that large models already have reasoning capabilities that just need to be properly elicited. The work is relevant to alignment because it shows that model behaviour can be significantly improved through prompting, without retraining. Later work explored automatic chain-of-thought generation, self-consistency checking, and other extensions.
