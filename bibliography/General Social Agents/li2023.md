# Determining the Validity of Large Language Models for Automated Perceptual Analysis

**Authors:** Peiyao Li, Noah Castelo, Zsolt Katona, Miklos Sarvary  
**Year:** 2023  
**Citation key:** `li2023`  
**PDF:** [SSRN](https://ssrn.com/abstract=4241291)  
**Google Scholar:** [Search](https://scholar.google.com/scholar?q=Validity+Large+Language+Models+Automated+Perceptual+Analysis+Li+2023)

## Summary

This paper explores the potential of LLMs to substitute for human participants in market research, focusing on perceptual analysis—mapping how consumers perceive brands via similarity measures and attribute ratings. The authors argue that perceptual analysis is a promising use case for automated market research for certain product categories. Their method produces outputs that closely match human survey data: agreement rates between human- and LLM-generated datasets exceed 75% for both brand similarity measures and product attribute ratings. They demonstrate that for some categories, this approach can increase the efficiency of market research by speeding up the process and potentially reducing cost. Results also suggest that with larger training corpora, LLM-based market research may address more nuanced questions involving demographics or context that would be prohibitively expensive or infeasible with human respondents. The analysis uses car trade-in data (acknowledgement to Florian Stahl).

## Authors

**Peiyao Li** — Haas School of Business, University of California, Berkeley. Research in marketing and analytics.

**Noah Castelo** — Alberta School of Business. Research in marketing and consumer behaviour.

**Zsolt Katona** — Haas School of Business, University of California, Berkeley. Research in marketing, digital strategy, and network effects. [Google Scholar](https://scholar.google.com/citations?user=WqF5qVYAAAAJ)

**Miklos Sarvary** — Columbia Business School and Haas School of Business, UC Berkeley. Research in marketing, media, and technology. [Google Scholar](https://scholar.google.com/citations?user=WqF5qVYAAAAJ)

## Relevance to our project

### Early LLM-as-Surrogate Work
- 2023 paper on using LLMs for perceptual (subjective) judgments
- Complements later social-science simulation work (Hewitt, Tranchero, etc.)
- Relevant to timeline of "LLMs as human proxies" literature

### Perceptual Analysis as Use Case
- Argues that tasks relying on self-reported perceptions are well-suited to LLMs
- Contrast with papers showing failures on strategic or incentive-sensitive tasks (e.g. Gao et al.)
- Relevant to when substitution is more vs. less valid

### Market Research and Practice
- Direct application to marketing and product development
- Efficiency and cost arguments for automation
- Relevant to business and information systems audience

### Validation and Limits
- Emphasises agreement rates and benchmarking to human data
- Suggests scope will expand with model and data scale
- Relevant to discussions of validity and generalisation

## Key concepts

- **Perceptual analysis**: Mapping consumer perceptions of brands (similarity, attributes)
- **Brand similarity measures**: How similar consumers judge two brands to be
- **Product attribute ratings**: Ratings of brands on dimensions (e.g. luxury, reliability)
- **Automated market research**: Using LLM-generated data instead of or alongside human surveys

## Notes

The paper is an early, applied contribution to the "LLM as surrogate" literature in a marketing context. The 75%+ agreement rate is a concrete validity metric. The argument that perceptual analysis is a promising use case (self-report, language-like) aligns with later findings that LLMs do better on some tasks than others (e.g. strategic games). Useful for discussing boundary conditions of LLM validity and for market research / information systems applications.
