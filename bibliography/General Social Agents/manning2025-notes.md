# General Social Agents

**Authors:** Benjamin S. Manning, John J. Horton  
**Year:** 2025  
**Citation key:** `manning2025`  
**PDF:** [arXiv](https://arxiv.org/pdf/2508.17407.pdf)  
**arXiv:** [2508.17407](https://arxiv.org/abs/2508.17407)  
**Google Scholar:** [Search](https://scholar.google.com/scholar?q=General+Social+Agents+Manning+Horton+2025)

## Summary

This paper presents an approach for building "general" AI agents that can predict human behavior across novel settings using theory-grounded natural language instructions, existing empirical data, and knowledge acquired during training. The authors argue that whilst applying social science theories to new settings typically requires ad hoc modifications, AI agents placed in simulations of novel settings offer an alternative requiring minimal or no modifications. To demonstrate the approach in settings with no prior data, the authors design a heterogeneous population of 883,320 novel games. Agents are constructed using human data from a small set of conceptually related but structurally distinct "seed" games. In preregistered experiments, agents predict initial human play in 1,500 random games better than cognitive hierarchy models, game-theoretic equilibria, and out-of-the-box agents. For separate novel games, these simulations predict responses from new human subjects better than even the most plausibly relevant published human data.

## Authors

**Benjamin S. Manning** — MIT. Research in economics, game theory, and AI applications to social science. [Homepage](http://www.benjaminmanning.io/)

**John J. Horton** — MIT & NBER. Research in labor economics, online markets, and AI applications. Known for early work on using LLMs as research subjects. [Homepage](https://www.john-joseph-horton.com/) | [Google Scholar](https://scholar.google.com/citations?user=WqF5qVYAAAAJ)

## Relevance to our project

### Theory-Grounded Agent Construction
- Shows how to embed social science theories in AI agents via natural language instructions
- Demonstrates value of theoretical grounding for generalisation
- Relevant to building agents that generalise beyond training data

### Generalisation Across Settings
- Tests agents on 883,320 novel games with no prior human data
- Shows agents outperform traditional models (cognitive hierarchy, game theory)
- Demonstrates agents can predict better than published human data in some cases

### Methodology for Building General Agents
- Uses training data from "seed" games to optimise agents
- Validates on distinct but conceptually related settings
- Emphasises importance of avoiding overfitting

### Applications to Social Science
- Enables prediction in settings with no prior data
- Could accelerate theory testing and development
- Relevant to using AI for exploratory research

## Key concepts

- **General social agents**: AI agents that predict human behavior across diverse settings
- **Theory-grounded instructions**: Natural language prompts embedding social science theories
- **Seed games**: Small set of games used to train agents that generalise to novel games
- **Cognitive hierarchy**: Model of strategic reasoning depth
- **Game-theoretic equilibria**: Nash equilibrium predictions

## Notes

This paper addresses a key challenge in using LLMs as social agents: how to build agents that generalise to truly novel settings where no human data exists. The approach of using theory-grounded instructions combined with training on seed games is methodologically interesting—it suggests that agents can learn general principles from limited data if properly instructed. The scale of the evaluation (883,320 games) is impressive, and the finding that agents outperform even published human data in some cases is striking. The emphasis on avoiding overfitting and using cross-setting validation is important—it distinguishes this work from approaches that might work in-sample but fail to generalise. The paper is particularly relevant to discussions of when and how LLMs can serve as useful social science tools.
