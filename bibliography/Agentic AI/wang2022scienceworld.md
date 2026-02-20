# Science World: Is your Agent Smarter than a 5th Grader?

**Authors:** Ruoyao Wang, Peter Jansen, Marc-Alexandre Côté, Prithviraj Ammanabrolu  
**Year:** 2022  
**Citation key:** `wang2022scienceworld`  
**PDF:** [ACL Anthology](https://aclanthology.org/2022.emnlp-main.775.pdf)  
**Google Scholar:** [Search](https://scholar.google.com/scholar?q=Science+World+Is+your+Agent+Smarter+than+a+5th+Grader)

## Summary

This paper introduces Science World, a benchmark to test agents' scientific reasoning abilities in an interactive text environment aligned with elementary school science curriculum. The authors argue that despite progress in question-answering and scientific text processing, current models cannot reliably reason about or explain learned science concepts in novel, grounded contexts. They hypothesise that agents need to be grounded in interactive environments to achieve such reasoning. Experiments show that a 1.5M-parameter agent trained interactively for 100k steps outperforms an 11B-parameter model trained statically on millions of expert demonstrations for scientific question-answering and reasoning, providing empirical support for the hypothesis.

## Authors

**Ruoyao Wang** — University of Arizona. Email: ruoyaowang@arizona.edu. Research in NLP and interactive agents.

**Peter Jansen** — University of Arizona. Email: pajansen@arizona.edu. Research in question-answering and scientific reasoning.

**Marc-Alexandre Côté** — Microsoft Research Montréal. Email: macote@microsoft.com. Research in interactive AI and games.

**Prithviraj Ammanabrolu** — Allen Institute for AI. Email: raja@allenai.org. Research in embodied AI and text-based environments.

## Relevance to our project

### Agentic AI and Grounding
- Demonstrates value of interactive grounding for reasoning
- Benchmark for evaluating scientific reasoning in agents
- Relevant to discussions of when static vs. interactive training is needed

### Limitations of Scale-Only Approaches
- Shows smaller interactively trained agents can outperform much larger static models
- Suggests data quality and task design matter beyond scale
- Relevant to understanding capabilities and limitations of LLMs

## Key concepts

- **Science World**: Interactive text benchmark for elementary science curriculum
- **Model collapse**: (related topic) training on generated data can degrade models
- **Grounded reasoning**: Reasoning in interactive, situated environments vs. static QA

## Notes

Task format: agents receive natural language task descriptions (e.g. determine if a metal fork is electrically conductive) and act in a simulated environment. The benchmark tests whether models can reuse scientific concepts in novel experimental contexts rather than merely retrieving from similar training examples.
