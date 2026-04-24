# Cursor Rules

This folder contains rules for AI assistants working on this project. Rules use the **`.mdc`** format with YAML frontmatter (`description`, `globs`, `alwaysApply`) so Cursor can target them by path and apply them when relevant.

## Shared canonical docs

Bibliography **workflow**, **BibTeX/biber**, and **MCP habits** are maintained in **`bib-mcp`** at `../../../bib-mcp/docs/agent-rules/` (relative to files in this folder). Local `.mdc` files only list **this repo’s paths and exceptions**.

## Rule files (.mdc)

- **`bibliography.mdc`** — Applies to `bibliography/**`, `bibliography/CHANGELOG.md`, and `bibliography/references.bib`. Points at bib-mcp; BUS-658 paths, `*-notes.md`, and “Relevance to our class”.
- **`references.mdc`** — Applies to `bibliography/references.bib`, `references.bib`, and bibliography notes. Points at bib-mcp.
- **`formatting.mdc`** — UK spelling, APA prose, article class, footnotes. Always on for `*.tex`; BibLaTeX details defer to bib-mcp.

## Adding a new paper

1. Follow `../../../bib-mcp/docs/agent-rules/bibliography-workflow.md` and `bib-biber.md`.
2. BibTeX in `bibliography/references.bib`; files under `bibliography/<theme>/`; note file `{citationkey}-notes.md`; prepend `bibliography/CHANGELOG.md`.
