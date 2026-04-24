# The knowledge complexity of interactive proof systems

**Authors:** Shafi Goldwasser, Silvio Micali, Charles Rackoff  
**Year:** 1991 (journal; extended abstract STOC 1985)  
**Citation key:** `goldwasser1991_knowledge`  
**PDF:** local `goldwasser1991_knowledge.pdf` (extended-abstract style scan)  
**Google Scholar:** [Search](https://scholar.google.com/scholar?q=The+knowledge+complexity+of+interactive+proof+systems)

## Summary

This paper introduces **interactive proof systems** and measures how much extra information a verifier gains from an interaction beyond learning that the statement is true. That measure is **knowledge complexity**; a proof system is **zero-knowledge** if the verifier could simulate the conversation without the prover, so the transcript reveals nothing beyond validity. The definitions underpin modern **zero-knowledge proofs** used in cryptography and, by analogy, in privacy-preserving identity and Web3 designs discussed in the course.

## Authors

**Shafi Goldwasser** — MIT / Weizmann; Turing Award (with Micali) 2012. **Silvio Micali** — MIT; cryptography and blockchain. **Charles Rackoff** — University of Toronto; complexity and cryptography.

## Relevance to our class

- Formalises what it means for a proof to “reveal nothing but validity,” which connects to Week 11 readings on ZK intuition (cave stories) versus precise definitions.
- Interactive proofs and knowledge complexity are the theoretical layer behind **zk-SNARKs** and **identity** applications (e.g. selective disclosure without leaking secrets).

## Key concepts

- Interactive proof systems; probabilistic verification  
- Knowledge complexity; zero-knowledge (simulation-based definition)  
- Relation to NP and cryptographic protocols  

## Notes

(To be filled on closer reading.)
