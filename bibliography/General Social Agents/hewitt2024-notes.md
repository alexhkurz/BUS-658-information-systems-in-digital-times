# Predicting Results of Social Science Experiments Using Large Language Models

**Authors:** Luke Hewitt, Ashwini Ashokkumar, Isaias Ghezae, Robb Willer  
**Year:** 2024  
**Citation key:** `hewitt2024`  
**PDF:** [Supplement](https://treatmenteffect.app/supplement.pdf)  
**Web demo:** [treatmenteffect.app](https://treatmenteffect.app)  
**Google Scholar:** [Search](https://scholar.google.com/scholar?q=Predicting+Results+Social+Science+Experiments+Large+Language+Models+Hewitt+2024)

## Summary

This paper evaluates whether LLMs can predict the results of social science experiments. The authors built an archive of 70 pre-registered, nationally representative US survey experiments (476 treatment effects, 105,165 participants) from the TESS program and replication archives. They prompted GPT-4 to simulate how representative samples of Americans would respond to experimental stimuli. Predictions from simulated responses correlate strongly with actual treatment effects (r = 0.85), equalling or surpassing human forecaster accuracy. Accuracy remained high for unpublished studies that could not be in training data (r = 0.90). The authors also assessed accuracy across demographic subgroups, disciplines, and nine megastudies (346 additional treatment effects). Results suggest LLMs can augment experimental methods in science and practice, whilst highlighting limitations and risks of misuse. A web demo allows researchers to generate AI-based forecasts of experimental effects.

## Authors

**Luke Hewitt** — Stanford University. Equal contribution. Research in social psychology and computational methods.

**Ashwini Ashokkumar** — New York University. Equal contribution. Research in social psychology and communication.

**Isaias Ghezae** — Stanford University. Research in social psychology and experimental methods.

**Robb Willer** — Stanford University. Professor of Sociology and Psychology. Research in social psychology, political sociology, and moral psychology. [Google Scholar](https://scholar.google.com/citations?user=WqF5qVYAAAAJ)

## Relevance to our project

### Strong Evidence for LLM Predictions
- Often cited as key evidence that LLMs can predict treatment effects (e.g. in Anthis et al.)
- 91% of variation in average treatment effects (with measurement error adjustment) in some reports
- Relevant to debates on when LLM simulations are valid

### Methodological Contribution
- Large, pre-registered, nationally representative archive
- Includes unpublished studies (out-of-training evaluation)
- Demographic and disciplinary breakdowns
- Extends to megastudies, behavioural measures, field interventions

### Limitations and Risks
- Paper explicitly discusses limitations and misuse risks
- Complements more critical work (e.g. Gao et al.) by showing scope of success and failure
- Relevant to responsible use of LLM-based forecasting

### Practical Tool
- Web demo (treatmenteffect.app) for researchers
- Could support pilot studies, power analysis, and prioritisation of replications

## Key concepts

- **Treatment effects**: Differences in outcomes attributable to experimental conditions
- **TESS**: Time-Sharing Experiments in the Social Sciences (NSF-funded program)
- **Representative simulation**: Prompting LLM to simulate demographically diverse samples
- **Out-of-training evaluation**: Unpublished studies that could not appear in training data

## Notes

This paper is a central reference in the "LLMs as social agents" literature. The high correlation (r = 0.85–0.90) is frequently cited by optimistic position papers. The finding that accuracy holds for unpublished studies addresses contamination concerns. The authors caution against overinterpretation and discuss misuse risks. The web demo makes the approach accessible for researchers. Useful to read alongside Anthis et al. (promise), Gao et al. (caution), and Manning & Horton (general agents).
