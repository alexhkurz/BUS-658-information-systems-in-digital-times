# "Cloze Procedure": A New Tool for Measuring Readability

**Authors:** Wilson L. Taylor  
**Year:** 1953  
**Citation key:** `taylor1953`  
**PDF:** [SAGE Journals](https://doi.org/10.1177/107769905303000401)  
**DOI:** 10.1177/107769905303000401  
**Google Scholar:** [Search](https://scholar.google.com/scholar?q=Cloze+procedure+new+tool+measuring+readability+Taylor+1953)

## Summary

This paper introduces "cloze procedure", a method for measuring text readability by systematically deleting words from a passage and asking readers to fill in the blanks. The term "cloze" derives from Gestalt psychology's concept of "closure"—the tendency to complete incomplete patterns. Taylor demonstrates through pilot studies and experiments that cloze procedure results correlate well with established readability formulas whilst offering advantages: the method is straightforward, produces easily quantifiable data, and directly measures comprehension rather than just surface textual features. The procedure works by creating a psychological need to complete the text, and readers' success rates indicate how well they understand the material. This work became foundational in reading research and education.

## Authors

**Wilson L. Taylor** (d. 2017) — Psychologist and communications researcher at the University of Illinois. Developed cloze procedure whilst working in mass communications research. The method became widely used in educational assessment and reading comprehension research.

## Relevance to our project

### Precursor to Modern Language Modelling
- The cloze task (fill in missing words) is essentially the same as masked language modelling used in BERT and similar models
- Shows that predicting missing tokens is a good measure of language understanding
- Direct precursor to modern self-supervised learning techniques

### Readability and Comprehension
- Provides method for assessing text difficulty
- Relevant to discussions of AI-generated text quality
- Connects to modern work on evaluating LLM outputs

### Psychological Foundations
- Based on Gestalt closure principles
- Links language processing to pattern completion
- Relevant for understanding how humans process language

### Educational Applications
- Used widely in reading assessment
- Relevant for AI tutoring systems and educational technology

## Key concepts

- **Cloze procedure**: Systematic deletion of words from text with readers attempting to restore them
- **Closure**: Gestalt psychology concept of completing incomplete patterns
- **Readability**: Measure of how easily text can be understood
- **Comprehension assessment**: Measuring understanding through reconstruction

## Notes

The cloze procedure is remarkably similar to modern masked language modelling (MLM) used in BERT-style models. Where Taylor had humans fill in blanks to assess comprehension, modern NLP trains models to fill in masked tokens to learn language representations. This shows how psychological methods for measuring human language understanding directly inspired machine learning techniques. The paper also demonstrates early recognition that language is highly predictable from context—a key insight underlying modern LLMs.
