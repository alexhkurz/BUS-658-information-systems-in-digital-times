# Language Modeling Is Compression

**Authors:** Grégoire Delétang, Anian Ruoss, Tim Genewein, Christopher Mattern, Matthew Aitchison, Paul-Ambroise Duquenne, Jordi Grau-Moya, Laurent Orseau, Marcus Hutter, Elliot Catt, Li Kevin Wenliang, Joel Veness  
**Year:** 2024  
**Citation key:** `deletang2024`  
**PDF:** [arXiv](https://arxiv.org/pdf/2309.10668.pdf)  
**arXiv:** [2309.10668](https://arxiv.org/abs/2309.10668)  
**Google Scholar:** [Search](https://scholar.google.com/scholar?q=Language+Modeling+Is+Compression)

## Summary

The paper argues that prediction and lossless compression are essentially equivalent (source coding theorem) and evaluates large (foundation) language models as general-purpose compressors. It shows that large LMs are powerful predictors and that the compression viewpoint yields insights into scaling laws, tokenisation, and in-context learning. For example, Chinchilla 70B compresses ImageNet patches and LibriSpeech samples better than domain-specific compressors (PNG, FLAC). The prediction–compression equivalence also allows using any compressor (e.g. gzip) to build conditional generative models. Published at ICLR 2024.

## Authors

**Grégoire Delétang, Anian Ruoss** — Google DeepMind (equal contribution). **Paul-Ambroise Duquenne** — Meta AI & Inria. Other authors — Google DeepMind. Research in compression, language modelling, and foundations of ML.

## Relevance to our class

- **Theoretical link**: prediction and compression as “two sides of the same coin”.
- **Scaling and capability**: compression as a general capability metric for LMs across modalities.
- **In-context learning**: interpreted through the lens of compression.

## Key concepts

- **Source coding theorem**, arithmetic coding, LM-as-compressor, scaling laws, tokenisation, in-context learning, reverse direction (compressor as generative model).

## Notes

(Quotes, reading notes, follow-ups)
