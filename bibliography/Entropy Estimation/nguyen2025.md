# Beyond Semantic Entropy: Boosting LLM Uncertainty Quantification with Pairwise Semantic Similarity

**Authors:** Dang Nguyen, Ali Payani  
**Year:** 2025  
**Citation key:** `nguyen2025`  
**PDF:** [ACL Anthology](https://aclanthology.org/2025.findings-acl.234)  
**Google Scholar:** [Search](https://scholar.google.com/scholar?q=Beyond+Semantic+Entropy+Boosting+LLM+Uncertainty+Quantification+Pairwise+Semantic+Similarity)

## Summary

Hallucination in LLMs can be detected via uncertainty of model outputs, often measured by entropy. Semantic entropy (SE) quantifies uncertainty at the semantic-cluster level. For longer one-sentence responses, SE is less effective because it ignores intra-cluster similarity (spread within a cluster) and inter-cluster similarity (distance between clusters). The authors propose a black-box uncertainty quantification method inspired by nearest-neighbour estimates of entropy, extendable to white-box settings with token probabilities. They show theoretically that the method generalises semantic entropy. Experiments on Phi3 and Llama3 across question-answering and related tasks demonstrate improved effectiveness over semantic entropy.

## Authors

**Dang Nguyen** — UCLA CS. **Ali Payani** — Cisco Systems Inc. Research in LLM uncertainty quantification, hallucination detection, and semantic similarity.

## Relevance to our class

- **Uncertainty and entropy** in LLM outputs; connection to compression and prediction.
- **Semantic vs lexical** uncertainty (clusters, similarity).
- **Black-box vs white-box** methods for deployment and interpretability.

## Key concepts

- **Semantic entropy**, pairwise semantic similarity, nearest-neighbour entropy estimates, hallucination detection, uncertainty quantification.

## Notes

(Quotes, reading notes, follow-ups)
