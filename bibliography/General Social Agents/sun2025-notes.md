# Sociodemographic Prompting is Not Yet an Effective Approach for Simulating Subjective Judgments with LLMs

**Authors:** Huaman Sun, Jiaxin Pei, Minje Choi, David Jurgens  
**Year:** 2025  
**Citation key:** `sun2025`  
**PDF:** [arXiv](https://arxiv.org/pdf/2311.09730.pdf)  
**arXiv:** [2311.09730](https://arxiv.org/abs/2311.09730)  
**Google Scholar:** [Search](https://scholar.google.com/scholar?q=Sociodemographic+Prompting+Not+Yet+Effective+Simulating+Subjective+Judgments+LLMs+Sun+2025)

## Summary

This paper evaluates nine popular LLMs on their ability to account for demographic differences in subjective judgment tasks (politeness and offensiveness) using the POPQUORN dataset. The study finds that in zero-shot settings, most models' predictions align more closely with labels from White participants than those from Asian or Black participants, whilst only a minor gender bias favouring women appears in the politeness task. Critically, sociodemographic prompting—enriching prompts with demographic information—does not consistently improve performance and in some cases worsens LLMs' ability to perceive language from specific sub-populations. These findings highlight potential demographic biases in LLMs when performing subjective judgment tasks and underscore the limitations of sociodemographic prompting as a strategy to achieve pluralistic alignment.

## Authors

**Huaman Sun** — University of Toronto. Email: hm.sun@mail.utoronto.ca. Research in NLP and social computing.

**Jiaxin Pei** — Stanford University. Email: pedropei@stanford.edu. Research in NLP, fairness, and bias in language models.

**Minje Choi** — Amazon. Email: minjec@amazon.com. Research in NLP and applied ML.

**David Jurgens** — University of Michigan. Email: jurgens@umich.edu. Associate Professor. Research in computational social science, NLP, and sociolinguistics. [Homepage](https://jurgens.people.si.umich.edu/) | [Google Scholar](https://scholar.google.com/citations?user=WqF5qVYAAAAJ)

## Relevance to our project

### Bias and Fairness in LLMs
- Demonstrates systematic demographic biases in LLM outputs for subjective tasks
- Shows that simple prompting interventions are insufficient to address bias
- Relevant to discussions of fairness, representation, and pluralistic alignment

### Limitations of Prompting-Based Solutions
- Challenges assumption that demographic prompting can improve diversity
- Shows that prompt engineering alone cannot solve bias problems
- Relevant to understanding limitations of current alignment techniques

### Subjective Judgment Tasks
- Examines how LLMs handle tasks requiring social and cultural understanding
- Shows disconnect between LLM outputs and diverse human perspectives
- Relevant to discussions of when LLMs can and cannot serve as human proxies

## Key concepts

- **Sociodemographic prompting**: Enriching prompts with demographic or individual-specific information
- **Pluralistic alignment**: LLM's ability to represent diverse perspectives and judgments
- **Subjective judgment tasks**: Tasks where human responses vary based on personal traits and cultural background
- **Demographic bias**: Systematic differences in model outputs across demographic groups

## Notes

The paper uses the POPQUORN dataset to evaluate models on politeness and offensiveness judgments. The finding that models align more with White participants' judgments suggests training data biases. The failure of sociodemographic prompting is particularly important—it suggests that simply telling a model to "respond as a [demographic]" doesn't meaningfully change its underlying representations or biases. This has implications for using LLMs in applications requiring diverse perspectives, such as content moderation, evaluation, or social science research.
