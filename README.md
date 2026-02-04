# BUS 658: Information Systems in Digital Times

This is the repository for the course BUS-658 Information Systems in Digital Times in Spring 2026.

**Quick Links**:
- [Syllabus](syllabus.md)
- [Lecture by Lecture](lecture-by-lecture.md)
- [Canvas](https://canvas.chapman.edu/courses/???)
- [Slides](https://alexhkurz.github.io/BUS-658-information-systems-in-digital-times/) (after building and enabling Pages; see below)

---

## Slides on GitHub Pages

Slides are written in [Marp](https://marp.app/) markdown in `slides/`. You build them locally to HTML and push the `docs/` folder; GitHub Pages serves from that.

### One-time setup

1. **Enable GitHub Pages (Deploy from a branch)**  
   In your repo: **Settings → Pages**  
   - Under **Build and deployment**, set **Source** to **Deploy from a branch**.
   - **Branch**: `main` (or `master`)  
   - **Folder**: `/docs`  
   - Save.

2. **Build and push the site once** (see “Workflow” below).  
   Your slides will be at:  
   `https://alexhkurz.github.io/BUS-658-information-systems-in-digital-times/slides/slides01.html`

### Workflow

1. Edit the **`.md`** files in `slides/` as needed.
2. From the repo root, run:
   ```bash
   bash scripts/gh-pages.sh
   ```
   (Requires Node/npm; the script uses `npx` to run Marp—no global install needed. If the script is executable you can use `./scripts/gh-pages.sh` instead.)
3. Commit and push the built files:
   ```bash
   git add docs/
   git commit -m "Update slides"
   git push
   ```
   GitHub Pages will update from the `docs/` folder on `main`.

To add more slide decks, add `slides02.md`, etc.; the script builds every `slides/*.md` file into `docs/slides/`.