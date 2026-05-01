# Taking Stock 01: Repository Reorganisation Plan

This note captures a concrete clean-up and reorganisation plan for the BUS-658 repository after Spring 2026. The goals are:

1. make the repo easy to run again for a future cohort;
2. make it understandable and presentable to outside readers;
3. preserve provenance and course history without cluttering the public-facing surface.

## 1) Current Situation (Quick Diagnosis)

The repository contains valuable material, but it currently mixes at least four concerns at the top level:

- course-facing assets (`syllabus.md`, `readings.md`, `lecture-by-lecture.md`, `labs/`, `Assignments.md`);
- publication/deployment assets (`docs/`, rendered slide artefacts);
- working materials and local scratchpads (`notes/`, `local/`);
- one-off weekly exports and submissions (`BUS-658 Week 7/`, `BUS-658-Week-9/`).

This makes onboarding harder: a newcomer cannot quickly identify what is canonical, what is archival, and what is private/instructor-only.

## 2) Reorganisation Principles

- **Separation of concerns:** public course content, instructor operations, and historical archives should not live in one flat layer.
- **Single canonical source per artefact type:** one place for readings, one place for lecture metadata, one place for slides sources.
- **Predictable naming:** avoid spaces and ad hoc date formatting in folder names.
- **Public by default, private by design:** keep teachable/public material easy to browse; isolate student submissions and local notes.
- **Automatable build/deploy path:** slide generation and site publishing should be scriptable and documented.

## 3) Proposed Target Structure

```text
.
├── README.md
├── course/
│   ├── syllabus.md
│   ├── assignments.md
│   ├── readings.md
│   ├── schedule.md                  # replaces lecture-by-lecture.md
│   ├── weeks/
│   │   ├── week-01.md
│   │   ├── week-02.md
│   │   └── ...
│   └── labs/
├── lectures/
│   ├── week-01/
│   │   ├── slides.md                # canonical source
│   │   └── links.md                 # discussion docs, external links
│   └── ...
├── slides/
│   ├── shared-assets/
│   └── legacy-decks/                # imported pptx/pdf that are not Marp-native
├── bibliography/
├── website/
│   ├── source/                      # docs source material
│   └── public/                      # publish output (or existing docs/)
├── archive/
│   ├── 2026-spring/
│   │   ├── student-submissions/
│   │   │   ├── week-07/
│   │   │   └── week-09/
│   │   └── snapshots/
├── instructor/
│   ├── notes/                       # private pedagogy/process notes
│   └── operations/                  # checklists, prep, retrospectives
└── scripts/
```

Notes:

- Keep `bibliography/` where it is, because it already has internal structure and conventions.
- If retaining `docs/` for GitHub Pages, treat it as generated/public output and mirror source in `website/source/` or `slides/`.

## 4) Concrete Changes to Apply

### A. Top-level cleanup

- Rename:
  - `Assignments.md` -> `course/assignments.md`
  - `lecture-by-lecture.md` -> `course/schedule.md`
- Move:
  - `syllabus.md`, `readings.md` into `course/`
  - `labs/` into `course/labs/`
  - `notes/` into `instructor/notes/` (or split public/private notes first)
- Archive:
  - `BUS-658 Week 7/` -> `archive/2026-spring/student-submissions/week-07/`
  - `BUS-658-Week-9/` -> `archive/2026-spring/student-submissions/week-09/`

### B. Lecture content normalisation

- Create one folder per lecture week under `lectures/week-XX/`.
- In each week folder, store:
  - canonical slide source (Marp markdown when possible);
  - links to discussion docs (HackMD/Google Docs);
  - any week-specific handouts.
- Replace scattered link collections with `course/schedule.md` that references each `lectures/week-XX/`.

### C. Slides and website pipeline

- Distinguish source vs generated files:
  - sources in `lectures/` and `slides/`;
  - generated HTML/PDF in `website/public/` (or current `docs/` if keeping that convention).
- Standardise `scripts/`:
  - `scripts/build-slides.sh`
  - `scripts/publish-site.sh`
  - `scripts/check-links.sh` (optional but useful)
- Document exact commands in README.

### D. Documentation and discoverability

- Rewrite `README.md` with explicit sections:
  - course overview;
  - quick start for instructors;
  - quick navigation for external visitors;
  - repository map;
  - what is archived vs active.
- Add:
  - `CONTRIBUTING.md` (how to add readings/slides/weekly updates);
  - `archive/README.md` (retention policy and privacy expectations);
  - `instructor/README.md` (what belongs there and what should not be public).

### E. Naming and hygiene standards

- Adopt folder naming convention `kebab-case` for new folders.
- Use week folders as `week-01`, `week-02`, etc.
- Avoid spaces in new filenames.
- Add/update `.gitignore` for:
  - OS artefacts (`.DS_Store`);
  - temporary exports;
  - local-only working files.

## 5) Public-Facing Curation

To make the repo presentable externally:

- keep only representative, non-sensitive examples in the primary browsing path;
- move student raw exports and AI-generated feedback into `archive/` with clear context;
- add a short "Course outcomes and highlights" section in README with links to best artefacts;
- ensure outbound links are still valid and remove stale references.

## 6) Suggested Execution Plan (Low Risk)

### Phase 1: Structure setup

- create target folders (`course/`, `lectures/`, `archive/`, `instructor/`, optional `website/`);
- add placeholder READMEs to define intended use.

### Phase 2: Move and rename

- move top-level canonical files first;
- move weekly submission folders to archive;
- update links in `README.md` and `course/schedule.md`.

### Phase 3: Slide pipeline cleanup

- identify canonical source for each lecture deck;
- move generated artefacts into one publish directory;
- unify scripts and test deployment.

### Phase 4: Public polish

- tighten README;
- add CONTRIBUTING and archive policy notes;
- run final broken-link check.

## 7) Open Decisions Before Executing

- Should `instructor/` stay in this repo, or move to a private companion repo?
- Should `docs/` remain the GitHub Pages root, or be replaced by a generated `website/public/` directory?
- For student submission artefacts, keep full raw exports or only a curated subset?
- Keep PPTX files as canonical for some weeks, or migrate all possible decks to Marp Markdown?

## 8) Definition of Done

This clean-up is complete when:

- a new instructor can understand repository structure in under 10 minutes;
- a public visitor can browse course content without encountering internal clutter;
- every link from `README.md` and `course/schedule.md` resolves correctly;
- all historical material is preserved under `archive/` with context.

---

## 9) Polished Brief and Response (First-Contact Cleanup)

> I do not want to create and maintain a separate outward-facing GitHub Pages site right now. I do want this repository to be easy and interesting to browse for a first-time visitor (for example, another teacher or student).  
The first contact will be `README.md`, and from there the layout should naturally guide people to `readings.md` and `lecture-by-lecture.md` as the two main content hubs.  
Please start with minor cleanup only and make those two pages more meaningful to an outsider.

Great scope. We can improve discoverability without adding maintenance burden by treating the repository itself as the public surface.

For a minor, high-leverage first pass:

1. **Reshape `README.md` as a funnel**
   - add a clear `Start Here` section at the top;
   - place `Readings` and `Lecture by Lecture` first;
   - keep other links in a secondary section.

2. **Make `readings.md` legible to first-time visitors**
   - add a short framing paragraph explaining what this page is and how to use it;
   - keep `Required` vs `Optional` structure, but make it explicit;
   - fix obvious link issues and consistency problems.

3. **Make `lecture-by-lecture.md` scan as a narrative**
   - add a one-line explanation of how to read the page;
   - add short topic labels to each lecture entry;
   - preserve all existing links while improving readability.

This keeps maintenance low (no separate site) while making the repository browsable and meaningful for passersby.
