# Cursor Rules

This folder contains rules for AI assistants working on this project. Rules use the **`.mdc`** format with YAML frontmatter (`description`, `globs`, `alwaysApply`) so Cursor can target them by path and apply them when relevant.

## Rule files (.mdc)

- **`bibliography.mdc`** — Bibliography management: subfolders, note files, README, pdftotext workflow. Applies to `bibliography/**` and `references.bib`.
- **`references.mdc`** — BibTeX and citation key format (biber, author-year). Applies to `references.bib` and bibliography note files.
- **`formatting.mdc`** — UK spelling, APA citations, footnotes, LaTeX/BibLaTeX. Applies to all `.tex` files (always).

## Usage

When working on this project, assistants should:
1. Follow the rules in the relevant `.mdc` files (triggered by globs or always-applied).
2. Keep patterns consistent with existing structure.
3. Ask for clarification if rules conflict or are unclear.

## Adding a new paper

When a user provides a paper (URL, PDF, or reference):
1. Extract metadata (title, authors, year, PDF URL).
2. Add BibTeX entry in `references.bib` (see `references.mdc`).
3. Choose or create a subfolder under `bibliography/` (e.g. `bibliography/math-and-cs/`).
4. Add single-line entry to that subfolder’s `README.md`.
5. Create note file `{citationkey}.md` in that subfolder (see `bibliography.mdc`).
6. Add PDF and run `pdftotext` for that subfolder; extract summary and relevance if possible.
