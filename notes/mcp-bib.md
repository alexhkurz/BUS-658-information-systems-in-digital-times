# MCP tools for bibliography

Working note: whether something like the **QED.local BibTeX MCP server** could help manage the bibliography in this repo (and elsewhere).

Sources: `QED.local/docs/mcp-bibtex.md` (local clone) and `.cursor/rules/bibliography.mdc` in this repo.


## QED’s MCP server

The QED setup wires Cursor to a Python MCP server (`bibtex_server.py`) with a **multi-bib layout**:

- **Personal bib:** `data/bibtex/personal/references.bib` (writable).
- **External bibs:** read-only snapshots under `data/bibtex/external/`, refreshed via identity index / `sources.yaml`.

Environment knobs include `QED_BIBTEX_ROOT` and optional `QED_BIB_PATH` for a single personal bib override.

**Representative tools** (natural language or explicit names): `list_all_entries`, `search_local_library`, `check_for_duplicates`, `fetch_arxiv_metadata`, `add_entry`, `rebuild_identity_index`, `check_for_updates`, `export_cited_bib`. The docs stress **preview before add** and **duplicate checks** for safety.

**Dependencies:** Python 3.11+, repo venv (`setup.sh`), `mcp.json` pointing at that interpreter and script, `PYTHONPATH` to repo root. Verification is end-to-end in **Agent** mode with project MCP attached.

## BUS-658 bibliography

Per `bibliography.mdc`, a “new paper” is not only a BibTeX line:

1. **Single root file:** `references.bib` at repo root (not a `data/bibtex/` tree).
2. **Per-topic subfolders** under `bibliography/<theme>/` with PDF (local, gitignored), pandoc/pdftotext pipeline to `{citationkey}.md` or `.txt`, and **`{citationkey}-notes.md`** with a fixed structure (summary, authors, relevance to class, key concepts, notes).
3. **Subfolder `README.md`:** one bullet per paper (title, authors, year, PDF link, Scholar link, link to `-notes.md`).
4. **Optional** top-level `bibliography/README.md` index.

Citation keys and BibTeX field rules live in `references.mdc`; the workflow is **BibTeX + markdown artifacts + README curation**, not “one big library file only.”


## Where MCP-like tools help

| Need | QED-style MCP | Fit for BUS-658 |
|------|----------------|-----------------|
| Search existing entries | `search_local_library`, `list_all_entries` | **High** — one `references.bib`; could point `QED_BIB_PATH` (or equivalent) at this file |
| Duplicate avoidance before add | `check_for_duplicates` | **High** — same habit as QED docs |
| Fetch BibTeX from arXiv | `fetch_arxiv_metadata` + `add_entry` | **Medium–high** — speeds step 2 of `bibliography.mdc`; still need human/agent steps for README, notes, PDF rename, full text |
| Export cited refs for a `.tex` | `export_cited_bib` | **Low unless** the course uses LaTeX papers from this repo the same way QED does |
| External bib mirrors + identity index | `rebuild_identity_index`, `check_for_updates` | **Low by default** — BUS-658 is not modeled on leanprover-style external bibs unless you add that pattern |

So: **MCP is strongest on `.bib` I/O, search, dedup, and structured fetch** — the parts that are tedious and error-prone in any single-file or multi-file BibTeX workflow.

## Gaps: what the QED server does *not* automate

- Creating **`{citationkey}-notes.md`** from a template and filling Scholar links, relevance, etc.
- Updating **subfolder README** bullets in the prescribed format.
- **PDF rename** to `{citationkey}.pdf`, `pdftotext` / pandoc pipeline, or `.gitignore` in new subfolders.
- Choosing **which subfolder** a paper belongs to (thematic judgment).

Those remain **agent prompts + file edits** unless you add custom tools or scripts in this repo.

## Future MCP tools (closing the gap)

The interesting design question is not whether BibTeX MCP replaces the markdown/README/PDF workflow — it doesn’t — but **which additional tools** would make that workflow reliable and fast when invoked from the agent. Below, each gap from the previous section maps to plausible `@mcp.tool()`-style responsibilities (names are illustrative).

**Layout and hygiene (deterministic, low risk)**

| Tool idea | Role |
|-----------|------|
| `ensure_bibliography_subfolder` | Create `bibliography/<theme>/` if missing; ensure `bibliography/<theme>/.gitignore` contains `*.pdf` per `bibliography.mdc`. |
| `validate_entry_consistency` | Given `citationkey` + subfolder: check that `references.bib` has the key, `{citationkey}-notes.md` exists, README contains a bullet linking that key, optional checks for `.md`/`.txt` full text. Returns a structured report (missing pieces, malformed Scholar URL, etc.). |

**README and note stubs (mostly deterministic + templates)**

| Tool idea | Role |
|-----------|------|
| `append_readme_bullet` | Insert or update **one** bullet line in `bibliography/<theme>/README.md` using the exact format from the rules (title, `&` between surnames, Scholar query from title, link to `-notes.md`). Could take fields from BibTeX or from a small JSON payload. |
| `scaffold_notes_file` | Write `bibliography/<theme>/{citationkey}-notes.md` with the **empty section structure** from `bibliography.mdc` (title, authors, year, key, PDF/arXiv/Scholar lines filled from metadata; `Summary` / `Relevance` / etc. left as placeholders or short stubs). |
| `build_scholar_url` | Pure helper: title → encoded `scholar?q=…` URL (same rule as the cursor rules). Reduces copy-paste errors; composable with the two tools above. |

**PDF and full text (subprocess + paths)**

| Tool idea | Role |
|-----------|------|
| `rename_ingested_pdf` | Move or copy a dropped file to `bibliography/<theme>/{citationkey}.pdf` (enforce naming; refuse publisher-style filenames). |
| `run_fulltext_extraction` | Shell out to the **documented** pipeline: `pdftotext` → pandoc markdown cleanup for PDFs; or direct pandoc for EPUB/HTML. Inputs: subfolder + `citationkey`; outputs: paths to `.md` / `.txt` created or errors from missing binaries. |

**Judgment and prose (harder; optional or human-in-the-loop)**

| Tool idea | Role |
|-----------|------|
| `suggest_theme_subfolder` | Heuristic only: e.g. match title/abstract keywords to existing subfolder names or a small taxonomy file — **suggestion**, not auto-move; user or agent confirms. |
| No single “write relevance” tool | Sections like **Relevance to our class** and **Key concepts** are interpretive; an MCP tool could at most return a **draft** (if the server called an LLM — coupling model to server — or if the agent stays responsible for prose and tools only supply structure). Cleaner split: **tools = files, paths, URLs, subprocesses; agent = narrative content.** |

**Composition**

A practical “add paper” sequence in the agent could chain: existing BibTeX tools → `ensure_bibliography_subfolder` → `scaffold_notes_file` → `append_readme_bullet` → user drops PDF → `rename_ingested_pdf` → `run_fulltext_extraction` → `validate_entry_consistency`. Gaps in validation drive the next human or agent edits.

## Could MCP help?

**Yes, with scope clarity:**

1. **Reuse QED server from BUS-658 workspace (experimental)**  
   Cursor MCP is **per workspace**. To use QED’s server while editing BUS-658 you would either:
   - open QED as workspace (not ideal for BUS-658 files), or  
   - register a **second MCP server** in BUS-658’s `.cursor/mcp.json` that runs QED’s `bibtex_server.py` with **absolute paths** to QED’s venv and with `QED_BIB_PATH` (or `QED_BIBTEX_ROOT`) pointing at **this repo’s** `references.bib` / a dedicated bib root.  
   That reuses battle-tested tools without copying code, but couples machines to **two clones** and path maintenance.

2. **Lightweight BUS-658–native MCP**  
   A small server that only implements `search`, `check_duplicates`, `fetch_arxiv`, `append_to_references_bib` against **this repo’s** paths would match the course workflow and avoid QED’s external-bib complexity. Cost: duplicate or extract shared library code from QED (if licensing and layout allow).

3. **No MCP — scripts + rules only**  
   Shell/Makefile targets or a tiny Python CLI for the same operations, invoked by the agent via terminal. Same safety habits (preview, dedup); no Cursor MCP panel.

4. **Other places**  
   Any repo with a **known `references.bib` path** could use the same pattern: env var points the server at that file. Multi-bib “personal + external” mirrors QED; single-file is enough for many courses.

## Open questions

- Should BUS-658 **commit** a minimal `.cursor/mcp.json` snippet (or doc-only instructions) for optional QED-bridge vs. a **dedicated** small server?
- If arXiv (or DOI) fetch is added, should **add** always require an explicit user confirmation step in the agent workflow (as QED recommends)?
- Do we want **one** shared personal bib across repos (symlink or submodule) or **per-repo** `references.bib` only?

## Summary

**Near term:** QED-style MCP already fits **search, dedup, and BibTeX fetch** against `references.bib`; the lowest-friction experiment is still **bridging QED’s server** into this workspace with paths pointed at this repo’s bib (or a slim duplicate server).

**Design target for “the rest”:** see [Future MCP tools (closing the gap)](#future-mcp-tools-closing-the-gap) — the highest leverage additions are **scaffolding and validation** (`scaffold_notes_file`, `append_readme_bullet`, `ensure_bibliography_subfolder`, `validate_entry_consistency`, `run_fulltext_extraction`) while keeping **interpretive prose** in the agent or human edits rather than hiding it inside the server.
