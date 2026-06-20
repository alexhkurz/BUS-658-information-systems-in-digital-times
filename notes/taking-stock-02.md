# Taking Stock 02: Course Narrative and Public Face

Companion to [taking-stock-01.md](taking-stock-01.md), which covers repository structure and archival hygiene. This note is about **what the course is**, how to **say that on first contact**, and how the README and hub pages should advertise the material to a future cohort or an outside reader.

---

## 1) What problem the README was solving

A first-time visitor (another instructor, a student considering enrolment, a colleague browsing GitHub) should grasp within one screen:

1. **Subject matter** — not “we use LLMs in class,” but the intellectual territory.
2. **Arc** — how the semester is organised and why the topics appear in that order.
3. **Pedagogy** — enough about format to set expectations, without leading with assignment mechanics.
4. **Where to click** — readings and week-by-week trace as the two hubs ([taking-stock-01 §9](taking-stock-01.md#9-polished-brief-and-response-first-contact-cleanup)).

The old README second paragraph inverted that order: it opened with weekly LLM submissions and “interesting questions.” That is **distinctive pedagogy**, but it is not the **headline**. Treat it as one sentence in a closing “how we work” paragraph, not the course pitch.

---

## 2) How I would summarise the course (substance)

After reading `syllabus.md`, `readings.md`, `lecture-by-lecture.md`, `notes/course-summary.md`, intro slides, and the bibliography themes, the course is best described as:

> A graduate-style survey at the intersection of **modern AI**, **platform economics**, and **digital governance** — with emphasis on long-horizon consequences for business and society, not tool training.

### Two units, one story

| Unit | Weeks (approx.) | Question the unit answers |
|------|-------------------|---------------------------|
| **AI** | 2–8 (+ reflection) | What is this technology, how fast might it scale, can we align and trust it, what does it do to growth and labour, do machines “understand,” what futures are plausible? |
| **Digital platforms** | 9–12 (+ reflection) | How do centralised platforms create and capture value, why do they degrade, what does policy do, what role for decentralisation and cryptographic identity? |

The **through-line** (already visible in `course-summary.md` for weeks 1–4): move from **technical and normative foundations** → **strategic scale** → **safety and epistemology** → **macroeconomic impact**, then philosophy/interpretability/futures, then platforms, governance, and Web3-style infrastructure.

That arc is the advertisement. The LLM-assigned readings are the **method** for surviving eclectic, frontier material — not the course topic.

### What makes it distinctive (without overselling)

- **Eclectic readings on purpose** — transformers next to Malthus, Anthropic’s constitution next to Banks’s Culture, Scott Morton next to the Ali Baba cave. The point is **literacy**: connect mechanisms to business and civic stakes.
- **Co-teaching across econ and CS** — Benzell brings digitisation, platforms, automation macro; Kurz brings formal methods, semantics, decentralised systems. The syllabus learning objectives already span “mathematical foundations” and “regulatory aspects”; the README should signal that joint lens.
- **Question-driven seminars** — students arrive with one serious question per week, often stress-tested against an inadequate LLM answer. That trains **research taste**, not prompt engineering for its own sake.
- **Labs with teeth** — markdown workflows, scaling-law exercises, platform slides, ZKP stories, final projects that may be empirical, a demo, a film, or a pitch. The course is not lecture-only.

### What it is not (useful for positioning)

- Not a Python/ML bootcamp (though labs may use data and code).
- Not a crypto trading course (Bitcoin and ZKPs appear as **infrastructure and trust** ideas).
- Not an AI safety PhD seminar (alignment appears, but alongside Acemoglu and platform policy).
- Not a replacement for Canvas — the repo is **open courseware plus instructor workspace**; keep procedural detail in syllabus/assignments.

---

## 3) README: recommended structure

Keep the repo as the public surface (no separate marketing site required). Suggested `README.md` layout:

```text
# Title

[One paragraph: repo + offering + term/room — year-stamped or “last taught Spring 2026”.]

[Two–three paragraphs: course pitch — stakes, two-unit arc, pedagogy in one breath.]

## Start Here
- Readings
- Lecture by lecture (or Schedule)

## Course materials
- Syllabus, Assignments, Bibliography, Canvas, Intro slides

## For instructors (optional, short)
- Link to notes/taking-stock-01.md or instructor/README
- Marp deploy one-liner (footer or collapsible)

## Repository map (optional once structure stabilises)
- course/ vs archive/ vs bibliography/ — after Phase 1 of taking-stock-01
```

### Draft pitch paragraphs (for README)

*Replace the current second paragraph block with something along these lines; tune voice with Seth.*

**Paragraph A — stakes**

The digital stack you already use — large language models, analytics pipelines, social and market platforms, and the protocols underneath them — is changing how firms compete, how labour markets reorganise, and how societies set rules. This course steps back from day-to-day tooling to ask what is actually going on: how modern AI works and scales, whether it can be aligned and trusted, what it does to growth and inequality, whether machines “understand,” and how centralised platforms, decentralised networks, and policy might evolve together.

**Paragraph B — arc**

The semester follows two arcs. **Unit 1 (AI)** moves from foundations and forecasting through alignment and macroeconomics to interpretability, philosophy of mind, and speculative futures. **Unit 2 (digital platforms)** covers decentralisation and market design, platform dynamics and competition, governance and prosocial media, and cryptographic tools such as zero-knowledge proofs. Readings are deliberately eclectic — technical papers, economic models, policy essays, science fiction, and current journalism — so you can connect engineering detail to business and policy consequences.

**Paragraph C — format + LLM role (keep short)**

Classes combine lecture, seminar-style discussion driven by your questions, and labs (often data- or presentation-oriented). You will write two short reflections and complete a final project imagining how these technologies could or should be used. Throughout, you are expected to use LLMs and other research tools seriously: not as shortcuts, but to engage harder texts and to formulate questions worth arguing about in the room.

### Year-agnostic first line

For “next year’s class,” decide explicitly:

- **Option A:** `README.md` always names the *upcoming* term (update each January).
- **Option B:** neutral header (“Chapman BUS-658”) + `course/offering-2027-spring.md` for logistics.
- **Option C:** “Materials from Spring 2026; revised for Spring 2027” banner when stale links are unavoidable.

Recommendation: **Option B** once `course/` exists; until then, a single sentence in README is enough, with Canvas as the live schedule of record.

---

## 4) Hub pages: what “more meaningful” means

### `readings.md`

Add at the top (before Week 11):

- **What this page is** — canonical reading list by week; required vs optional; link to syllabus for grading.
- **How weeks map to units** — a small table (Week → Unit → Theme), even if weeks are listed reverse-chronologically for convenience during term.
- **Reverse order** — listing Week 11 first is instructor-friendly near the end of term but confusing in July. For public browsing, consider ascending `week-01` … `week-14` after the term ends (or split `readings-current.md` vs `readings-full.md`).

### `lecture-by-lecture.md`

Already improved with topic labels (L1 Orientation, L4 Alignment, etc.). Next steps:

- One-line **“How to use this page”** at the top.
- Align week numbers with `readings.md` and syllabus (watch off-by-one: syllabus “Week 8” vs lecture “L9 Platforms”).
- When student submission folders move to `archive/`, replace `./BUS-658 Week 7/` links with archive paths or remove raw HTML exports from the primary path.

### `syllabus.md`

Learning objectives are strong but dense. For outsiders, a **three-bullet “You will leave able to…”** at the top (drawn from the existing list) helps. Keep the full objectives for accreditation.

### `notes/course-summary.md`

Valuable as an **instructor mid-term memo**; consider promoting a shortened “The arc in one page” to `course/overview.md` when restructuring, and leave the week-by-week detail in instructor notes.

---

## 5) Bibliography as advertisement

`bibliography/README.md` already indexes themes (AI Foundations, Trustworthy AI, LLM Alignment, Scaling Laws, Semantic Web, ZKP, etc.). For a passerby, the README could add one sentence:

> The thematic folders under `bibliography/` mirror topics we may assign or reference; curated `-notes.md` files record why a paper matters for this class.

That signals seriousness (you are building durable reading infrastructure, not a link dump).

---

## 6) Relationship to taking-stock-01 (execution order)

Suggested sequence so narrative work is not lost in a big move:

| Step | Action | Risk |
|------|--------|------|
| 1 | Rewrite README pitch (this note §3) | Low |
| 2 | Add framing paragraphs to `readings.md` and `lecture-by-lecture.md` | Low |
| 3 | Create `course/` + move syllabus/readings/assignments; fix links | Medium |
| 4 | Archive `BUS-658 Week 7/`, `BUS-658-Week-9/`; update schedule links | Medium |
| 5 | Normalise `lectures/week-XX/` and slide pipeline | Higher |

Do **1–2 before 3** so the public story is stable while paths churn.

---

## 7) Open questions for co-instructors

1. **Tone** — business-school professional vs slightly speculative (“Culture,” “Deep Utopia”)? The draft pitch leans academic-neutral.
2. **Emphasis** — should Justified Posteriors / Aschenbrenner-style forecasting stay central for 2027, or age out as the field moves?
3. **Unit 2 balance** — platforms vs crypto/Web3: some students want more of one; syllabus already bundles both.
4. **Student artefacts in public repo** — archive everything, or curate anonymised exemplar questions for recruitment?
5. **Canvas vs GitHub** — which is canonical for deadlines and readings during term? README should say explicitly.

---

## 8) Definition of done (narrative track)

Separate from taking-stock-01’s structural definition of done:

- A colleague can answer “what is this course?” from the README alone.
- Readings and schedule pages do not assume you were in the room in April 2026.
- Pedagogy (LLM + questions + reflections + project) is visible but not mistaken for the subject matter.
- Pitch paragraphs are agreed with co-instructor and copied into README (and optionally syllabus intro).

---

## 9) Immediate next actions

- [ ] Agree README pitch (§3 draft) with Seth; apply to `README.md`.
- [ ] Add framing block to top of `readings.md` (+ consider ascending week order post-term).
- [ ] Add “how to use this page” to `lecture-by-lecture.md`; fix known broken links (e.g. L10 slides URL).
- [ ] Decide year-agnostic pattern for offering line (§3).
- [ ] After README is stable, proceed with taking-stock-01 Phase 1 folder creation.

---

*Written after Spring 2026 retrospective; revise before the next offering.*
