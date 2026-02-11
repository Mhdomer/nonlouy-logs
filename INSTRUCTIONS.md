## nonlouy-log-main — Structure & Usage Guide

This project is a Jekyll blog using the **Chirpy** theme, customized for cybersecurity writeups and learning notes.

### 1. Core theme/config files

- `_config.yml`
  - `theme: jekyll-theme-chirpy`
  - Set `title`, `tagline`, `description`, `url`, `baseurl`.
  - `social` block:
    - `name: Muhammed Omar`
    - `email: muhamedomar.g@gmail.com`
    - Links: `https://x.com/Md3omer`, `https://github.com/Mhdomer`, `https://www.linkedin.com/in/mhd3omar/`
  - `avatar: "/assets/image/Photo.jpg"`
  - `toc: true`, `paginate: 10`, `theme_mode:` (empty = system, with toggle).
- `Gemfile`
  - Pulls in Jekyll, Chirpy theme, and build tooling.
- `.github/workflows/pages-deploy.yml`
  - GitHub Pages build & deploy using `bundle exec jekyll b` and `htmlproofer`.

To reuse this setup in another repo, copy `_config.yml`, `Gemfile`, `.github/workflows/pages-deploy.yml`, and adjust only site identity (titles, URLs).

### 2. Content structure

- `_posts/`
  - Organized by topic: `HTB/`, `TryHackMe/`, `RootMe/clientside/`, `PortSwiggerLabs/`, `OSCP_12W/`, `FYP/`, `Notes/`, `Projects/`.
  - Uses standard Jekyll post naming: `YYYY-MM-DD-title.md`.
  - Template: `_posts/POST_TEMPLATE.md` — use this as the base for new posts.

#### 2.1 Post front matter pattern

Example (simplified):

```yaml
---
layout: post
title: "Post Title Here"
date: 2026-02-11
categories: [HTB]
tags: [writeup, hackthebox, ctf]
author: nonlouy
---
```

Recommended sections in body:

- `## Overview`
- `## Challenge/Topic Description`
- `## Solution/Walkthrough`
  - `### Step 1`, `### Step 2`, etc.
- `## Key Learnings`
- `## Resources`
- `## References`

Use fenced code blocks with language tags (` ```bash`, ` ```python`, etc.) and images from `assets/`.

### 3. Navigation and tabs

- `_tabs/`
  - `about.md` — About tab (layout: default page via Chirpy).
  - `categories.md` — `layout: categories`
  - `tags.md` — `layout: tags`
  - `archives.md` — `layout: archives`
  - `progress.md` — `layout: page`, shows learning progress and timeline.

Tabs use the `tabs` collection defined in `_config.yml`:

```yaml
collections:
  tabs:
    output: true
    sort_by: order
```

Each tab front matter specifies:

- `layout: ...` (one of `page`, `categories`, `tags`, `archives`)
- `icon: ...` (Font Awesome icon)
- `order: N` (controls sidebar order).

Copy `_tabs/` to another project to get the same sidebar structure; only change the text content, not the layout or order unless you want to.

### 4. Data files

- `_data/authors.yml`

```yaml
muhamed_omar:
  name: Muhamed Omar
  bio: Student & Networking Practitioner focused on networking, security, and cloud.
  avatar: /assets/image/Photo.jpg
  github: https://github.com/Mhdomer
  twitter: https://x.com/Md3omer
  linkedin: https://www.linkedin.com/in/mhd3omar/
  email: muhamedomar.g@gmail.com
```

- `_data/contact.yml` — controls sidebar contact icons (GitHub, X/Twitter, email, RSS).
- `_data/share.yml` — controls social share buttons at bottom of posts (Twitter/X, Facebook, Telegram, etc.).

Copy `_data/` to replicate contact and sharing behavior; update URLs and icons as needed.

### 5. Styling (dark/light friendly)

- `assets/css/custom.scss`
  - Extends Chirpy’s default styles.
  - Uses CSS variables (`var(--primary-color)`, `var(--code-bg-color)`, etc.) so it automatically adapts to light and dark mode.
  - Customizations:
    - Sidebar avatar: circular, bordered, with subtle shadow.
    - Stronger sidebar profile typography.
    - Sidebar nav links: hover background + slight slide.
    - Post list items: left border in primary color, shift and color change on hover.
    - Tag and category badges: pill style with hover transitions.
    - Archive timeline styling with year headers and vertical line.
    - Code blocks: highlighted background and left border.

To reuse the same visual style, copy `assets/css/custom.scss` unchanged into the new project.

### 6. Plugins and last-modified dates

- `_plugins/posts-lastmod-hook.rb`
  - On each post init, runs Git commands to compute `last_modified_at` from commit history.
  - Requires the site to be in a Git repo with committed posts.

Copy `_plugins/posts-lastmod-hook.rb` into the new project to get automatic `last_modified_at` support.

### 7. Pages

- `index.html`
  - Front matter: `layout: home` — Chirpy’s main blog index (shows recent posts, sidebar, etc.).
- `index.md`
  - `layout: default` — custom text landing page (welcome, quick navigation).
- `about.md`
  - More detailed About page (separate from `_tabs/about.md`).
- `progress.md`
  - Standalone page mirroring the progress tab, using tables and checklists.

In a new repo, you can:

- Copy `index.html` to keep Chirpy’s home layout.
- Copy and adapt `index.md`, `about.md`, and `progress.md` as needed.

### 8. How to replicate this repo in a new project

1. Initialize a new GitHub repo.
2. Copy these from `nonlouy-log-main`:
   - `_config.yml`
   - `_data/`
   - `_plugins/`
   - `_tabs/`
   - `_posts/` (or at least the folder structure and `POST_TEMPLATE.md`)
   - `assets/` (especially `assets/css/custom.scss` and any shared images)
   - `Gemfile`
   - `.github/workflows/pages-deploy.yml`
3. Update `_config.yml`:
   - `title`, `tagline`, `description`, `url`, `baseurl`.
   - `social` block and `avatar` path if needed.
4. Run locally:
   - `bundle install`
   - `bundle exec jekyll serve`
5. Push to GitHub; GitHub Actions workflow will build and deploy to GitHub Pages.

### 9. Writing a new post (quick checklist)

1. Copy `_posts/POST_TEMPLATE.md` to the appropriate subfolder (e.g. `_posts/HTB/`).
2. Rename file to `YYYY-MM-DD-slug.md`.
3. Update front matter:
   - `title`, `date`, `categories`, `tags`, `author`.
4. Fill in sections:
   - Overview, Description, Walkthrough (with steps), Key Learnings, Resources, References.
5. Add code blocks and images from `assets/...`.
6. Commit and push; the post will appear on:
   - Home page (latest posts)
   - Categories tab
   - Tags tab
   - Archives tab.

