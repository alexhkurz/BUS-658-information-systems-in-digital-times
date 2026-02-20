# LLMZip: Lossless Text Compression using Large Language Models

**Authors:** Chandra Shekhara Kaushik Valmeekam, Krishna Narayanan, Dileep Kalathil, Jean-Francois Chamberland, Srinivas Shakkottai  
**Year:** 2023  
**Citation key:** `valmeekam2023`  
**PDF:** [arXiv](https://arxiv.org/pdf/2306.04050.pdf)  
**arXiv:** [2306.04050](https://arxiv.org/abs/2306.04050)  
**Google Scholar:** [Search](https://scholar.google.com/scholar?q=LLMZip+Lossless+Text+Compression+using+Large+Language+Models)

## Summary

This paper uses the large language model LLaMA-7B as a predictor for next-token prediction and derives a new asymptotic upper bound on the entropy of English, smaller than prior estimates. A byproduct is a lossless compression algorithm that combines the LLM predictor with a lossless coding scheme. Experiments show the scheme outperforms state-of-the-art text compressors (BSC, ZPAQ, paq8h) on the benchmarks considered, illustrating the tight link between prediction and compression.

## Authors

**Chandra Shekhara Kaushik Valmeekam, Krishna Narayanan, Dileep Kalathil, Jean-Francois Chamberland, Srinivas Shakkottai** — Department of Electrical and Computer Engineering, Texas A&M University. Research in information theory, compression, and language modelling.

## Relevance to our class

- Connects **information theory** (entropy, source coding) with **large language models**.
- Illustrates that **better prediction implies better compression** (Shannon’s paradigm with modern LMs).
- Relevant to discussions of **LLM capabilities** beyond generation (e.g. as compressors and entropy estimators).

## Key concepts

- **Entropy of English**, lossless text compression, arithmetic coding, LLaMA as predictor, bits per character.

## Notes

(Quotes, reading notes, follow-ups)
