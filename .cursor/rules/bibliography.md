# Bibliography Management Rules

Rules for maintaining the course bibliography (papers, reports, and readings for BUS 658). See also `bibliography/references.md` for BibTeX format and citation key conventions, if you use BibTeX.

## Folder structure

- **Root:** `bibliography/`.
- **BibTeX:** `bibliography/references.bib` (all entries). Optionally `bibliography/references.md` for citation key conventions and BibTeX notes.
- **Subfolders:** One per topic or course theme. Use subfolders so the bibliography can grow without a single flat list. Suggested themes aligned with the syllabus:
  - `ai-foundations/` — What is AI? Neural nets, attention, foundations.
  - `automation-economy/` — Will automation save or doom the economy? Macroeconomics, wages, welfare.
  - `digital-platforms/` — Platforms, APIs, networks, crypto, enshittification.
  - `trustworthy-ai/` — Evaluation, safety, constitution, desiderata.
  - `culture-and-future/` — Near and far future, culture and AI.
- **Per-paper files** live in the chosen subfolder: `{citationkey}.pdf`, `{citationkey}.txt`, `{citationkey}.md`.

Citation keys: use lowercase `authorYYYY` or `authorYYYYshorttitle` (e.g. `vaswani2017`, `lenat2023trustworthy`). For disambiguation, PDFs may optionally be renamed to `AuthorYearTitle.pdf`; keep `.md` and `.txt` as `{citationkey}.md` / `{citationkey}.txt` so links and `bibliography/references.bib` stay consistent.

## Workflow: drop-in sources (AI-assisted)

You can **copy or drop PDFs (or other sources) into `bibliography/`** (e.g. at the root of `bibliography/` or in a single staging folder). The AI should then:

1. **Identify the source:** Read the file (or filename) to get title, authors, year. If it’s a PDF, use the filename or run `pdftotext` on a copy to extract metadata; if metadata is unclear, infer from filename (e.g. `Author_Year_Title.pdf`) or ask the user.
2. **Choose or create a subfolder:**
   - **Choosing:** Pick the **best-matching existing** subfolder from the list below. Prefer the most specific fit (e.g. a paper on LLM evaluation → `trustworthy-ai/`; on automation and wages → `automation-economy/`). If two folders fit, choose the one that matches the **primary** topic.
   - **Creating:** If no existing subfolder fits well, **create a new one**: use a short, lowercase, hyphenated name (e.g. `llm-evaluation/`, `platform-governance/`). Add a one-line description in `bibliography/README.md` and create `bibliography/<newfolder>/README.md` (can start with just this paper’s bullet).
3. **Move and rename:** Move the file to `bibliography/<subfolder>/{citationkey}.pdf` (create the subfolder if new). Use the citation key derived from authors and year (and short title if needed for disambiguation).
4. **Do the rest:** Add BibTeX to `bibliography/references.bib`, add one bullet to the subfolder’s `README.md`, create `bibliography/<subfolder>/{citationkey}.md` (metadata, summary, key concepts; summary can be brief or “To be filled”), run `pdftotext` to produce `{citationkey}.txt` in that subfolder. Optionally update `bibliography/README.md` if you created a new subfolder.

**Subfolder choice guide (use for “choose or create”):**

| Subfolder | Use for |
|-----------|--------|
| `ai-foundations/` | What is AI? Neural nets, attention, transformers, foundations of ML/AI. |
| `automation-economy/` | Automation and the economy; macroeconomics; wages, jobs, welfare; “save or doom” debates. |
| `digital-platforms/` | Platforms, APIs, networks; crypto; enshittification; platform economics and governance. |
| `trustworthy-ai/` | Evaluation, safety, alignment; constitution; desiderata; benchmarks (e.g. GDPVal). |
| `culture-and-future/` | Near/far future of AI; culture and AI; speculative or societal implications. |

If the paper spans two areas, put it in the folder that matches the **main** contribution or the unit where you’d assign it (Unit 1 vs Unit 2). For a genuinely new theme, create a new subfolder and document it in `bibliography/README.md`.

## Adding a new paper (manual checklist)

1. **Choose or create a subfolder** under `bibliography/` (e.g. `bibliography/automation-economy/`).
2. **Add BibTeX entry** to `bibliography/references.bib` (format and citation key: see `bibliography/references.md`).
3. **Add entry to the subfolder README:** `bibliography/<subfolder>/README.md` (single-line bullet; see format below).
4. **Create the note file** in that subfolder: `bibliography/<subfolder>/{citationkey}.md` (structure below).
5. **Add PDF and text:**
   - Save PDF as `bibliography/<subfolder>/{citationkey}.pdf` (or `AuthorYearTitle.pdf` if you use that convention).
   - Create text: `pdftotext bibliography/<subfolder>/{citationkey}.pdf bibliography/<subfolder>/{citationkey}.txt` (same base name as the PDF in that folder).
6. **Optionally update top-level index:** `bibliography/README.md` (list of subfolders and short description; link to each subfolder’s README).

PDFs are ignored by git (e.g. via `bibliography/*/.gitignore` or root `.gitignore`). `.txt` and `.md` are committed so assistants can use them.

## Subfolder README format

Each subfolder has a `README.md` that lists its papers as **single-line bullet points**:

```
- {Title} - {Author1} & {Author2} ({Year}) - [PDF]({url}) - [`{citationkey}`]({citationkey}.md)
```

- Title: full title, sentence case.
- Authors: use "&" between names, "Lastname & Lastname" (no first names in README).
- Year: 4-digit in parentheses.
- Link: `[PDF](url)` if available; otherwise omit or use [arXiv](…), [Website](…), etc.
- Note file: `` [`citationkey`](citationkey.md) ``.

Example:

```
- Attention is all you need - Vaswani et al. (2017) - [PDF](https://arxiv.org/pdf/1706.03762.pdf) - [`vaswani2017`](vaswani2017.md)
```

## Top-level bibliography index (optional but recommended)

`bibliography/README.md` can list subfolders so the structure scales:

- Brief description of each subfolder (e.g. "AI foundations", "Automation and the economy").
- Link to each subfolder's README: `[ai-foundations](ai-foundations/README.md)`.

This gives a single place to see all topics and jump to the right subfolder when adding or searching papers.

## Note file structure (`{citationkey}.md`)

Each note file in a subfolder should follow this structure:

```markdown
# {Title}

**Authors:** {Full names}
**Year:** {Year}
**Citation key:** `{citationkey}`
**PDF:** [link](url)
**arXiv:** [id](abs url)   (if applicable)
**Google Scholar:** [search query](https://scholar.google.com/scholar?q=...+title+author+year)

## Summary

{2–3 paragraph summary of main contributions and arguments}

## Key concepts

- …

## Notes

{Quotes, reading notes, follow-ups}
```

- Include the **citation key** used in `bibliography/references.bib`.
- Include a **Google Scholar** link (e.g. search on title + author + year) for citations and related work.
- If there is an **open-access PDF**, link it in the note (and optionally in the BibTeX entry).

## Required actions when adding a paper

1. **Metadata:** Title, authors, year, PDF/arXiv URL from the source.
2. **BibTeX:** Add entry to `bibliography/references.bib`; if open-access PDF exists, add `url = {\url{...}}`; use `title = {{Title}}` with double braces to preserve capitalization.
3. **Subfolder:** Pick or create a subfolder under `bibliography/` (match course units/themes where possible).
4. **PDF:** Save to `bibliography/<subfolder>/{citationkey}.pdf` (or your chosen name).
5. **Text:** Run `pdftotext … .pdf … .txt` in that subfolder (same base name as PDF).
6. **Subfolder README:** Add one bullet line in `bibliography/<subfolder>/README.md`.
7. **Note file:** Create `bibliography/<subfolder>/{citationkey}.md` with metadata, summary, key concepts, and notes; include Google Scholar link.

## Scaling with many papers

- **Subfolders:** Add new subfolders by theme (e.g. `automation-economy/`, `digital-platforms/`) instead of one flat list.
- **Subfolder README:** Stays one line per paper; no long descriptions in the README.
- **Note files:** Keep detailed content in the `.md` files; README is for discovery and links.
- **Top-level index:** Maintain `bibliography/README.md` with subfolder names and links.
- **Naming:** Keep `.md`/`.txt` as `{citationkey}`; optional `AuthorYearTitle` for PDFs only if it helps.

## Git and file handling

- **PDFs:** Ignored by git (e.g. `*.pdf` in `bibliography/*/.gitignore` or root `.gitignore`). Stored locally only.
- **.txt and .md:** Tracked so assistants and tools can search and summarize.
- Keeps the repo small while leaving full text available locally and in notes.

## References

- **bibliography/references.bib:** Single BibTeX file for the course; all entries go here.
- **bibliography/references.md:** Citation key format and BibTeX entry types (optional; add when you use BibTeX).
- **Course readings:** Weekly required/optional readings live in `local/readings*.md`; the bibliography is for deeper or instructor-side papers and course prep.
