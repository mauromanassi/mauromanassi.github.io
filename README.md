# Manassi Lab website (static, off Wix)

Plain HTML/CSS rebuild of manassilab.com, content-matched page by page, ready to host on GitHub Pages instead of Wix.

## What's here

- `index.html`, `team.html`, `research.html`, `crowding.html`, `serialdependence.html`, `publications.html`, `contact.html`, `laboratory.html` + 8 Laboratory sub-pages (`literature.html`, `lab-equipment.html`, `online-experiments.html`, `coding.html`, `terminal.html`, `psychopy.html`, `analysis.html`, `writing.html`)
- `manassi.html` — Mauro's personal bio page (found via the site's sitemap, not linked from the main nav on the original either — reached from his name/photo on the People page)
- `stability-illusion.html` — a dedicated research page about the 2022 Science Advances paper (also sitemap-only, reached from the "click here to know more" link on the Stabilization page)
- `style.css` — single shared stylesheet, with mobile breakpoints at 768px and 420px
- `download-images.sh` — one-time script to pull all photos/figures **and** the PDFs/zips/docs referenced across the site onto your own machine (see below)
- `assets/images/`, `assets/files/` — where those downloaded files land

I found `manassi.html` and `stability-illusion.html` by checking manassilab.com's sitemap.xml after the fact — they're real, public pages that just aren't linked from the main navigation, so my first pass (which followed only the visible nav) missed them entirely. While cross-checking hrefs for these I also caught two mislinks from the first version: Mauro's "click here for more info" on the People page was pointing at the wrong PDF (it now correctly goes to `manassi.html`, and the *actual* CV PDF link — a different file than what I'd grabbed — now lives on that bio page), and the "click here to know more about it!" link on the Stabilization page was pointing at itself instead of the Stability Illusion page. Both are fixed now.

One more sitemap entry, `copy-of-publications`, was checked and confirmed to be an exact duplicate of the Publications page (a leftover Wix editing draft) — intentionally not carried over.

**One file stays external:** the "Stability Illusion" demo material is a 111 MB zip — over GitHub's 100 MB per-file limit — so `stability-illusion.html` links to it directly on manassilab.com rather than hosting a local copy, and it's excluded via `.gitignore` so it can't accidentally get committed.

## Homepage hero fixes

The homepage hero was initially capped too short (a leftover CSS value) and was missing two things that don't show up in plain text extraction because Wix renders them as part of the page's live layout rather than crawlable text: the artwork credit ("Brice Marden, Study For The Muses, 1991-1995") overlaid in the bottom-right corner of the image, and the "You see, but do not observe... — Sherlock Holmes" quote beneath it. Both are back now, along with the small lock icon next to "Laboratory" in the nav on every page (cosmetic only — see the privacy note above, it doesn't add real protection).

## 1. Get the images and documents (one-time step)

Right now `<img>` tags and several document links point to local paths (`assets/images/...`, `assets/files/...`) that don't exist yet. This machine's sandbox couldn't reach Wix to fetch them for you, so run this yourself after cloning — your own computer has normal internet access:

```
chmod +x download-images.sh
./download-images.sh
```

That pulls:
- ~18 images from `static.wixstatic.com` (Wix's public media CDN)
- ~17 documents (PDFs, zips, a .docx and a .pptx — literature reading lists, consent-form template, thesis guide, papers referenced in the Laboratory section) from `manassilab.com` itself

into `assets/`. After that the site is fully self-contained and independent of Wix — nothing links back to manassilab.com or Wix's CDN anymore. (A handful of links intentionally still point elsewhere — YouTube tutorials, GitHub repos, Qualtrics/Prolific/SONA, journal DOIs, etc. — since those were never Wix-hosted to begin with.)

## 2. Push to GitHub

```
git init
git add .
git commit -m "Initial import from Wix"
git branch -M main
git remote add origin https://github.com/<your-username>/<your-repo>.git
git push -u origin main
```

To serve it with GitHub Pages: repo Settings → Pages → Deploy from branch → `main` / `/ (root)`.

## Laboratory section (member onboarding pages)

`laboratory.html` is now a hub linking to 8 pages pulled from the password-protected part of the original site (literature, lab equipment, online experiments, coding, terminal, PsychoPy, analysis, writing).

**Heads up:** that content was deliberately gated on Wix. Plain static hosting (GitHub Pages, etc.) has no equivalent — once published, anyone with the link can read it. If you want to keep it restricted, make the GitHub repo **private**, or move this section behind real authentication rather than relying on a client-side password (those are trivial to bypass and would be a false sense of security).

## Known gaps (things I couldn't copy over)

- **Publications** link to each paper's DOI (the most reliable, permanent link). The original site also had separate "pdf" and "PubMed" links per entry for some papers; those weren't carried over to keep this manageable — the DOI resolves to the publisher page for all of them.
- Images are served at the same sizes Wix displayed them at (not full original resolution) — smaller, faster-loading files.
- Two illustrative figures on the Writing page (example trial-sequence and results plots) are described in a text box rather than embedded as images.

## Design

This isn't a byte-for-byte copy of Wix's underlying markup — Wix's generated HTML/CSS is heavily obfuscated and tightly coupled to its own JS runtime, so a literal copy wouldn't actually function once moved off Wix. Instead, every page's real content (text, structure, photos, publication list, links) was extracted from the live site and rebuilt as plain, readable HTML + CSS that works anywhere.

The stylesheet includes breakpoints for tablet/phone widths (nav, headings, hero image, and the sub-nav pills all resize on narrower screens), though it's a fresh responsive layout rather than a copy of Wix's own separately-designed mobile view.
