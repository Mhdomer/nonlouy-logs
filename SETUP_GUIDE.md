# 📚 nonlouy-lab - Complete Setup Guide

## ✅ What Changed

Your blog structure has been **completely merged and simplified**.

### Old Structure ❌
```
oscp/          (standalone)
fyp/           (standalone)
notes/         (standalone)
projects/      (standalone)
_posts/        (posts)
_tabs/         (navigation)
→ Navigation didn't connect everything!
```

### New Structure ✅
```
_posts/
├── OSCP/              → Category: OSCP (auto-navigable)
├── FYP/               → Category: FYP (auto-navigable)
├── Notes/             → Category: Notes (auto-navigable)
└── Projects/          → Category: Projects (auto-navigable)

_tabs/
├── categories.md      → Shows OSCP, FYP, Notes, Projects
├── tags.md            → Shows all tags
├── archives.md        → Shows timeline (auto-updated!)
├── about.md           → Your profile
└── progress.md        → This guide

→ Everything connected! Posts auto-appear everywhere!
```

---

## 🎯 How It Works

### When You Create a Post

**File**: `_posts/OSCP/2026-02-12-week-02.md`

```yaml
---
title: "OSCP Week 2"
date: 2026-02-12
categories: [OSCP]
tags: [oscp, week-2, networking]
---

Your content here...
```

### It Automatically Appears In:

| Location | Auto-Generated? |
|----------|-----------------|
| **Home** / index.html | ✅ Yes (latest posts first) |
| **Categories** → OSCP | ✅ Yes (all OSCP posts) |
| **Tags** → oscp, week-2 | ✅ Yes (matching posts) |
| **Archives** | ✅ Yes (by date/month) |
| **Search** | ✅ Yes (searchable) |

**Everything is automatic. No manual updating needed!**

---

## 📝 Writing Posts

### Step 1: Create File in Correct Folder

```
_posts/OSCP/2026-02-12-your-title.md
_posts/FYP/2026-02-12-your-title.md
_posts/Notes/2026-02-12-your-title.md
_posts/Projects/2026-02-12-your-title.md
```

**Date Format**: `YYYY-MM-DD` (2026-02-12, not 02-12-2026)

**Filename**: Lowercase, hyphens instead of spaces
- ✅ `2026-02-12-oscp-week-02.md`
- ❌ `2026-02-12 OSCP Week 2.md`

### Step 2: Add Front Matter

```yaml
---
title: "Your Post Title"
date: 2026-02-12
categories: [OSCP]
tags: [oscp, week-2, networking, tools]
---
```

**Important Fields:**
- `title`: Display name
- `date`: Publication date (must be today or past)
- `categories`: **Must match folder name OR create new**: [OSCP], [FYP], [Notes], [Projects]
- `tags`: Any tags you want (use 3-5)
- Author defaults to `nonlouy` (from config)

### Step 3: Write Content

```markdown
## Main Section

Your content here with **bold**, *italic*, `code`...

### Subsection

More content...

#### Lists
- Item 1
- Item 2

#### Code
\`\`\`python
def hello():
    print("code")
\`\`\`
```

---

## 📂 Categories Explained

### OSCP Category
**For**: Your OSCP certification journey, week-by-week

**Example Posts**:
- `2026-02-12-oscp-week-01-notes.md`
- `2026-02-13-oscp-week-02-labs.md`
- `2026-02-14-oscp-tools-setup.md`

**Front Matter**:
```yaml
categories: [OSCP]
tags: [oscp, week-1, networking, exploitation]
```

### FYP Category
**For**: Final Year Project phases and progress

**Example Posts**:
- `2026-02-12-fyp-phase-01-research.md`
- `2026-02-13-fyp-phase-01-implementation.md`
- `2026-02-14-fyp-results-analysis.md`

**Front Matter**:
```yaml
categories: [FYP]
tags: [fyp, phase-1, research, development]
```

### Notes Category
**For**: Reference materials, quick guides, cheatsheets

**Example Posts**:
- `2026-02-12-networking-fundamentals.md`
- `2026-02-13-linux-administration.md`
- `2026-02-14-security-concepts.md`

**Front Matter**:
```yaml
categories: [Notes]
tags: [networking, linux, security, reference]
```

### Projects Category
**For**: Personal projects and research

**Example Posts**:
- `2026-02-12-project-security-audit-tool.md`
- `2026-02-13-project-02-planning.md`

**Front Matter**:
```yaml
categories: [Projects]
tags: [project, development, security, active]
```

---

## 🏷️ Tags Guide

**Tags help organize posts** - use multiple tags per post!

### OSCP Tags
```
oscp, week-1, week-2, networking, exploitation
tools, lab, concepts, practice, writeup
```

### FYP Tags
```
fyp, phase-1, phase-2, research, development
implementation, testing, results, documentation
```

### Notes Tags
```
networking, linux, security, reference
terminal, commands, protocols, techniques
```

### Projects Tags
```
project, development, idea, planning
active, complete, research, prototype
```

---

## 🔍 Navigation Features

### Home Page
```
http://yoursite.com/
```
- Shows **latest 10 posts**
- Paginated (next page, etc)
- Newest first

### Categories Page
```
http://yoursite.com/categories
```
- Browse posts by category
- Click OSCP → see all OSCP posts
- Click FYP → see all FYP posts
- Etc.

### Tags Page
```
http://yoursite.com/tags
```
- Browse posts by tag
- Useful for finding related posts
- Tag cloud visualization

### Archives Page
```
http://yoursite.com/archives
```
- Timeline view
- Grouped by year/month
- **Updates automatically when you post!**

### Search
- Use sidebar search to find posts
- Searches titles and content

---

## 💾 Example: Creating Your First Post

### Create File
```
_posts/OSCP/2026-02-12-week-02-notes.md
```

### Add Content
```yaml
---
title: "OSCP Week 2 - Exploitation Basics"
date: 2026-02-12
categories: [OSCP]
tags: [oscp, week-2, exploitation, tools]
---

## Week 2: Introduction to Exploitation

### Topics Covered
1. SQL Injection
2. Remote Code Execution
3. Privilege Escalation

### Key Concepts

#### SQL Injection
This is how...

#### RCE Techniques
Various methods...

### Labs Completed
- [x] Lab 1
- [x] Lab 2
- [ ] Lab 3

### Resources
- [OWASP](https://owasp.org)
- [PayloadsAllTheThings](https://github.com/swisskyrepo/PayloadsAllTheThings)

### Next Week
Planning to...
```

### Save the File

Now when you push to GitHub, the post automatically appears in:
- ✅ Home
- ✅ Categories (OSCP section)
- ✅ Tags (oscp, week-2, exploitation, tools)
- ✅ Archives (February 2026)

---

## 📋 Checklist: Before You Start

- [ ] Understand post format: `_posts/CATEGORY/YYYY-MM-DD-title.md`
- [ ] Remember: Category folder name matters (OSCP, FYP, Notes, Projects)
- [ ] Date format: `2026-02-12` (past date or today)
- [ ] Add 3-5 tags per post
- [ ] Use markdown for formatting
- [ ] Test locally: `bundle exec jekyll serve`
- [ ] Push to GitHub (auto-deploys)

---

## 🚀 To Deploy

```bash
cd d:\original-repo

# Test locally
bundle exec jekyll serve
# Visit: http://localhost:4000

# Push when ready
git add .
git commit -m "Add new posts"
git push origin main
```

GitHub Pages auto-deploys in ~2-3 minutes!

---

## 📊 Current Status

| Category | Posts | Latest Date |
|----------|-------|-------------|
| OSCP | 1 | 2026-02-11 |
| FYP | 1 | 2026-02-11 |
| Notes | 1 | 2026-02-11 |
| Projects | 1 | 2026-02-11 |

---

## 💡 Pro Tips

1. **Use consistent naming**: `YYYY-MM-DD-descriptive-title.md`
2. **Keep dates sequential**: Posts with future dates won't appear
3. **Add multiple tags**: Helps people find related posts
4. **Use headers**: Makes content scannable
5. **Add code blocks**: Use syntax highlighting (python, bash, etc)
6. **Link references**: Reference other posts and external resources
7. **Update regularly**: Archive updates automatically!

---

## ❓ FAQ

**Q: Where do I write posts?**
A: In `_posts/CATEGORY/` folders (OSCP/, FYP/, Notes/, Projects/)

**Q: Will posts appear in Archives automatically?**
A: Yes! Archives update based on post dates automatically.

**Q: Can I create new categories?**
A: Yes! Just create a new folder in `_posts/` and use it as a category.

**Q: Do I need to update navigation?**
A: No! Categories, Tags, and Archives auto-generate from your posts.

**Q: How often should I post?**
A: As often as you want! No minimum requirement.

**Q: Can I have multiple categories per post?**
A: Yes! Use: `categories: [OSCP, Notes]`

**Q: Do old posts disappear?**
A: No! All posts stay in archives forever.

---

## 📞 Quick Reference

### File Locations
- **Posts**: `_posts/CATEGORY/YYYY-MM-DD-title.md`
- **Navigation**: `_tabs/`
- **Config**: `_config.yml`
- **Avatar**: `/assets/image/avatar.jpg`

### YAML Front Matter Template

```yaml
---
title: "Your Title Here"
date: 2026-02-12
categories: [OSCP]
tags: [tag1, tag2, tag3]
---
```

### Markdown Cheat Sheet

```markdown
# Heading 1
## Heading 2
### Heading 3

**Bold text**
*Italic text*
`inline code`

\`\`\`python
code block
\`\`\`

- List item
- Another item

> Blockquote

[Link](https://example.com)
![Image](path/to/image.jpg)

| Column A | Column B |
|----------|----------|
| Cell     | Cell     |
```

---

**Everything is automatic and connected. Just write posts and they appear everywhere!** 🎉

**Happy documenting!** 📝

---

**Last Updated**: February 11, 2026
**Created by**: Muhamed Omar (nonlouy)
