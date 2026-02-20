# Prediction and Entropy of Printed English

**Authors:** Claude E. Shannon  
**Year:** 1951  
**Citation key:** `shannon1951`  
**PDF:** [IEEE Xplore](https://ieeexplore.ieee.org/document/6773263)  
**DOI:** 10.1002/j.1538-7305.1951.tb01366.x  
**Google Scholar:** [Search](https://scholar.google.com/scholar?q=Prediction+and+Entropy+of+Printed+English+Shannon+1951)

## Summary

This foundational paper introduces a novel method for estimating the entropy and redundancy of language based on human prediction experiments. Shannon asked experimental subjects to predict the next letter in a text given the preceding letters, thereby exploiting native speakers' implicit knowledge of language statistics. The results showed that when accounting for long-range statistical effects (up to 100 letters), the entropy of ordinary literary English is approximately one bit per letter, with redundancy around 75%. This is significantly lower than the 2.3 bits per letter estimated when considering only short-range effects (up to 8 letters). This work laid crucial groundwork for information theory's application to natural language and presaged modern language modelling approaches that rely on predicting subsequent tokens from context.

## Authors

**Claude E. Shannon** (1916-2001) — Mathematician and electrical engineer, known as the "father of information theory". His 1948 paper "A Mathematical Theory of Communication" established the field of information theory. Worked at Bell Labs. [Wikipedia](https://en.wikipedia.org/wiki/Claude_Shannon) | [IEEE History Center](https://ethw.org/Claude_E._Shannon)

## Relevance to our project

### Historical Foundations of Language Modelling
- Introduces the concept of language entropy and predictability
- Shows that language has high redundancy due to statistical structure
- Directly anticipates modern neural language models which are fundamentally prediction systems

### Self-Supervised Learning Precursor
- Demonstrates that prediction is central to language understanding
- Shows human language knowledge can be characterised as probabilistic predictions
- The experimental method (predicting next character) is essentially the same task modern LLMs are trained on

### Information Theory and AI
- Provides mathematical framework for measuring information content
- Connects language structure to statistical properties
- Relevant for understanding compression, efficiency, and representation

## Key concepts

- **Entropy**: Statistical measure of information content (average bits per letter)
- **Redundancy**: Amount of constraint in language due to statistical structure
- **Predictability**: Ability to forecast next letter given preceding context
- **Long-range statistics**: Dependencies extending across phrases and sentences

## Notes

This paper is remarkably prescient—Shannon's approach of using human prediction experiments to estimate language entropy directly foreshadows modern language models, which are trained to predict the next token. The finding that English has ~1 bit/letter entropy suggests massive redundancy, which enables both compression and error correction. Modern LLMs can be viewed as very sophisticated implementations of Shannon's "ideal predictor".
