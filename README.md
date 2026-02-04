# BUS 658: Information Systems in Digital Times

This is the repository for the course BUS-658 Information Systems in Digital Times in Spring 2026.

**Quick Links**:
- [Syllabus](syllabus.md)
- [Lecture by Lecture](lecture-by-lecture.md)
- [Canvas](https://canvas.chapman.edu/courses/???)
- [Slides](https://YOUR_USERNAME.github.io/BUS-658-information-systems-in-digital-times/) (after enabling Pages; see below)

---

## Slides on GitHub Pages

Slides are written in [Marp](https://marp.app/) markdown in `slides/`. They are built to HTML and deployed automatically when you push to `main`.

### One-time setup

1. **Enable GitHub Pages (Actions)**  
   In your repo: **Settings → Pages**  
   - Under **Build and deployment**, set **Source** to **GitHub Actions**.

2. **Push this repo**  
   After the first push to `main`, the workflow runs and deploys.  
   Your slides will be at:  
   `https://YOUR_USERNAME.github.io/BUS-658-information-systems-in-digital-times/slides/slides01.html`

3. **Optional**: Replace `YOUR_USERNAME` in this README with your GitHub username so the link works.

### Workflow

- You only edit and commit **`.md`** files in `slides/`.
- The GitHub Action builds them to HTML and deploys to GitHub Pages (no separate branch; no need to commit HTML).
- To add more slide decks, add `slides02.md`, etc.; the workflow builds every `slides/*.md` file.