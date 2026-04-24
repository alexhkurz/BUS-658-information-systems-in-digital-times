# How to prove all NP statements in zero-knowledge, and a methodology of cryptographic protocol design

**Authors:** Oded Goldreich, Silvio Micali, Avi Wigderson  
**Year:** 1986  
**Citation key:** `goldreich1986_np_zk`  
**PDF:** local `goldreich1986_np_zk.pdf` (scanned; no usable `pdftotext` layer)  
**DOI:** [10.1007/3-540-47721-7_11](https://doi.org/10.1007/3-540-47721-7_11)  
**Google Scholar:** [Search](https://scholar.google.com/scholar?q=How+to+prove+all+NP+statements+in+zero-knowledge+Goldreich+Micali+Wigderson+1986)

## Summary

Under cryptographic assumptions (e.g. existence of secure encryption), the authors show that **every language in NP** has a **zero-knowledge proof system**: one can prove (e.g.) that a formula is satisfiable without revealing a satisfying assignment or other partial information. They also present a **methodology** for turning protocols secure against weak adversaries into protocols secure in stronger adversarial models—a theme that shaped modern **multi-party computation** and protocol composition.

## Authors

**Oded Goldreich** — Weizmann Institute; foundations of cryptography. **Silvio Micali** — MIT. **Avi Wigderson** — IAS; computational complexity.

## Relevance to our class

- Shows **why ZK matters for general claims** (not only number-theoretic examples): any NP statement can in principle be proved in zero-knowledge.
- Complements the informal “Ali Baba” intuition with the **existence** result and protocol-design methodology behind practical systems.

## Key concepts

- Zero-knowledge for NP; encryption-based constructions  
- Cryptographic protocol design methodology (weak → strong adversaries)  
- CRYPTO 1986 / LNCS 263  

## Notes

Full text in the local PDF is image-based; use the DOI link or a post-OCR copy for searchable text.
