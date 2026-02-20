# The Curse of Recursion: Training on Generated Data Makes Models Forget

**Authors:** Ilia Shumailov, Zakhar Shumaylov, Nicolas Papernot, Yiren Zhao, Yarin Gal, Ross Anderson  
**Year:** 2023  
**Citation key:** `shumailov2023`  
**PDF:** [arXiv](https://arxiv.org/pdf/2305.17493.pdf)  
**arXiv:** [2305.17493](https://arxiv.org/abs/2305.17493)  
**Google Scholar:** [Search](https://scholar.google.com/scholar?q=The+Curse+of+Recursion+Training+on+Generated+Data+Makes+Models+Forget)

## Summary

This paper investigates what happens when large language models are trained on data that includes a significant fraction of model-generated text—as may occur when future training data is scraped from the web where LLM output is prevalent. The authors find that using model-generated content in training causes irreversible defects: tails of the original content distribution disappear. They refer to this effect as **model collapse** and show that it can occur in Variational Autoencoders, Gaussian Mixture Models, and LLMs. They build theoretical intuition for the phenomenon and argue it is ubiquitous across learned generative models. The paper concludes that the issue must be taken seriously to sustain the benefits of training from large-scale web data, and that data from genuine human interactions will become increasingly valuable as LLM-generated content pervades the internet.

## Authors

**Ilia Shumailov** — University of Oxford. Research in ML security and generative models.

**Zakhar Shumaylov** — University of Cambridge. Research in machine learning.

**Nicolas Papernot** — University of Toronto & Vector Institute. Research in privacy, security, and ML. [Google Scholar](https://scholar.google.com/citations?user=WqF5qVYAAAAJ)

**Yiren Zhao** — Imperial College London. Research in machine learning.

**Yarin Gal** — University of Oxford. Research in Bayesian deep learning and uncertainty.

**Ross Anderson** — University of Cambridge & University of Edinburgh. Research in security and applied cryptography. [Homepage](https://www.cl.cam.ac.uk/~rja14/)

## Relevance to our project

### Model Collapse and Data Quality
- Central reference for "model collapse" and training on generated data
- Explains why recursive training on LLM output degrades models
- Relevant to data governance and long-term sustainability of LLM training

### Implications for AI Ecosystems
- As LLM text fills the web, future scraped data will be increasingly synthetic
- Value of human-generated and human-interaction data increases
- Relevant to policy and industry discussions on data sourcing

## Key concepts

- **Model collapse**: Irreversible degradation when models are trained on their own or other models' generated data; distribution tails disappear
- **Curse of recursion**: Successive generations of models trained on prior generations' output compound the effect
- **Data provenance**: Importance of distinguishing human vs. model-generated data for training

## Notes

Often cited alongside scaling laws and data-quality debates. The theoretical treatment (VAE, GMM, LLM) shows the phenomenon is not specific to language models. Relevant to discussions of open-source vs. proprietary data and of synthetic data in training.
