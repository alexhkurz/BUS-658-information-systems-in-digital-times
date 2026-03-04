# Scaling Laws for Neural Language Models

**Authors:** Jared Kaplan, Sam McCandlish, Tom Henighan, Tom B. Brown, Benjamin Chess, Rewon Child, Scott Gray, Alec Radford, Jeffrey Wu, Dario Amodei  
**Year:** 2020  
**Citation key:** `kaplan2020`  
**PDF:** [arXiv](https://arxiv.org/pdf/2001.08361.pdf)  
**arXiv:** [2001.08361](https://arxiv.org/abs/2001.08361)  
**Google Scholar:** [Search](https://scholar.google.com/scholar?q=Scaling+Laws+for+Neural+Language+Models)

## Summary

This paper presents a comprehensive empirical study of scaling laws for neural language models. The authors train models ranging from 10^3 to 10^9 parameters and measure loss as a function of model size, dataset size, and compute. They find that language model performance follows predictable power-law scaling with respect to these three factors, enabling extrapolation of the compute and data required to reach a given loss. The results have been highly influential for planning model and dataset scale (e.g. in GPT-3 and beyond) and for understanding the relationship between scale and capability in language models.

## Authors

**Jared Kaplan** — Johns Hopkins University, OpenAI. Email: jaredk@jhu.edu. Research in language models and scaling.

**Sam McCandlish** — OpenAI. Email: sam@openai.com. Research in language models and scaling.

**Tom B. Brown, Alec Radford, Dario Amodei** — OpenAI. Key figures in GPT series and language model scaling.

**Tom Henighan, Benjamin Chess, Rewon Child, Scott Gray, Jeffrey Wu** — OpenAI. Research in language models and infrastructure.

## Relevance to our project

### Scaling and Capability
- Foundational reference for "scaling laws" in language models
- Predictable relationships between size, data, compute, and loss
- Relevant to understanding why scale has driven capability gains

### Planning and Extrapolation
- Enables estimation of compute and data needed for target performance
- Influenced industry and research roadmaps (e.g. GPT-3, Chinchilla)
- Relevant to discussions of compute and data requirements for future models

## Key concepts

- **Scaling laws**: Power-law relationships between model size, data size, compute, and loss
- **Extrapolation**: Using observed scaling to predict performance at larger scale
- **Neural language models**: Autoregressive (e.g. transformer) LMs and their scaling behaviour

## Notes

Often cited together with later work on optimal compute/data trade-offs (e.g. Chinchilla). Central to arguments that "scale is all you need" (with caveats) and to forecasting model and infrastructure needs.
