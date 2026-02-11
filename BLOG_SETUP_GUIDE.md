# Personal Blog Setup Guide - Muhamed Omar

## What Was Done

Your Jekyll GitHub Pages blog has been fully customized with your personal information. Here's what was configured:

### Files Updated:

1. **`_config.yml`** - Main Jekyll configuration
   - Title: "Muhamed Omar"
   - Tagline: "Cloud & Network Security | Student & Practitioner"
   - GitHub username: `nonlouy`
   - LinkedIn: `mhd3omar`
   - X (Twitter): `Md3omer`

2. **`_data/authors.yml`** - Author information
   - Author ID: `nonlouy`
   - Display name: Muhamed Omar
   - Bio: "3rd Year Student at UTM Malaysia | Networking & Security Practitioner"
   - Email: muhamedomar.g@gmail.com

3. **`_data/contact.yml`** - Social media links
   - GitHub: https://github.com/nonlouy
   - LinkedIn: https://www.linkedin.com/in/mhd3omar/
   - X (Twitter): https://x.com/Md3omer
   - Email: muhamedomar.g@gmail.com

4. **`_tabs/about.md`** - About page
   - Updated with your bio and social links
   - Professional introduction to visitors

5. **`assets/css/custom.scss`** - Custom styling (NEW)
   - Enhanced sidebar with profile styling
   - Better post list visual hierarchy
   - Improved tag/category badges
   - Archive timeline design
   - Responsive mobile styles

### Pre-Existing Pages (Already Configured):

- **`index.html`** - Home page (list of all posts)
- **`_tabs/categories.md`** - Categories page (groups posts by category)
- **`_tabs/tags.md`** - Tags page (browse posts by tags)
- **`_tabs/archives.md`** - Archive page (chronological timeline)

---

## Blog Structure

### How the Chirpy Theme Works

Your blog uses **Jekyll Theme - Chirpy**, which provides:

- **Sidebar Navigation**: Automatically displays your profile, bio, and social links
- **Post Categories**: Organize posts by categories (HTB, TryHackMe, OSCP_12W, RootMe, PortSwiggerLabs)
- **Tags**: Way to tag and find posts by topic
- **Archive**: Timeline view of all posts
- **Responsive Design**: Works on mobile, tablet, and desktop

### Folder Structure

```
d:\original-repo\
├── _config.yml          # Main configuration (UPDATED)
├── _data/
│   ├── authors.yml      # Author info (UPDATED)
│   ├── contact.yml      # Social links (UPDATED)
│   └── share.yml
├── _tabs/
│   ├── about.md         # About page (UPDATED)
│   ├── categories.md    # Categories page
│   ├── tags.md          # Tags page
│   └── archives.md      # Archive page
├── _posts/
│   ├── HTB/
│   ├── TryHackMe/
│   ├── RootMe/
│   ├── OSCP_12W/
│   ├── PortSwiggerLabs/
│   └── ...              # Your writeups and challenges
├── assets/
│   ├── css/
│   │   └── custom.scss  # Custom styling (NEW)
│   └── image/           # Post images
└── Gemfile              # Ruby gem dependencies
```

---

## How to Write Posts

Posts automatically appear in categories based on their folder location in `_posts/`.

### Post Front Matter Format

Each markdown file should start with:

```yaml
---
title: "Post Title"
date: 2026-02-11
categories: [TryHackMe, Web]
tags: [hackthebox, ctf, writeup]
author: nonlouy
---

# Your content here...
```

**Key fields:**
- **title**: The post title
- **date**: Publication date (YYYY-MM-DD format)
- **categories**: Main topics (appears as folders in `_posts/`)
- **tags**: Keywords for finding posts
- **author**: Must match the key in `_data/authors.yml` (your author ID is `nonlouy`)

### Example Post

```markdown
---
title: "HackTheBox - CryptoChall Write-up"
date: 2026-02-10
categories: [HTB]
tags: [cryptography, hackthebox, ctf]
author: nonlouy
---

## Challenge Overview

This is a crypto challenge from HackTheBox...

### Solution

Here's how I solved it...
```

---

## How to Add Profile Picture

1. **Prepare your image**: Get a profile picture (recommended: 300x300px, square)
2. **Place in assets**: Save as `/assets/image/avatar.jpg` or your preferred name
3. **Update in `_data/authors.yml`**:
   ```yaml
   nonlouy:
     name: Muhamed Omar
     avatar: /assets/image/avatar.jpg  # Update this path
   ```

---

## How to Update Bio and Social Links

### Update Your Bio (`_data/authors.yml`)

```yaml
nonlouy:
  name: Muhamed Omar
  bio: "3rd Year Student at UTM Malaysia | Networking & Security Practitioner"  # Change this
```

### Add More Social Links (`_data/contact.yml`)

Simply add more entries:

```yaml
- type: github
  icon: "fab fa-github"
  url: "https://github.com/nonlouy"

- type: linkedin
  icon: 'fab fa-linkedin'
  url: 'https://www.linkedin.com/in/mhd3omar/'

# Add more...
```

---

## Local Development

### Prerequisites

- Ruby (2.7 or higher)
- Jekyll
- Bundler

### Running Locally

1. Install dependencies:
   ```bash
   bundle install
   ```

2. Run the Jekyll server:
   ```bash
   bundle exec jekyll serve
   ```

3. Open your browser: `http://localhost:4000`

The site auto-reloads when you make changes.

---

## Deployment

Your repo uses GitHub Actions (see `.github/workflows/pages-deploy.yml`) to automatically deploy to GitHub Pages when you push to the main branch.

### Steps to Deploy

1. Commit your changes:
   ```bash
   git add .
   git commit -m "Update blog content"
   git push origin main
   ```

2. GitHub Actions automatically builds and deploys
3. Your site appears at: `https://github.com/nonlouy` (or your GitHub username)

---

## Site Features

### Categories Page
- View all posts grouped by category
- Click to see posts from one category
- Your existing folders (HTB, TryHackMe, RootMe, etc.) become categories

### Tags Page
- Browable tag cloud
- Click any tag to see related posts
- Add tags to your post front matter

### Archive Page
- Timeline view of all posts
- Filtered by year
- Great for historical browsing

### Search
- Sidebar search functionality
- Powered by Jekyll

---

## Customization Options

### Change Colors

Edit custom CSS in `/assets/css/custom.scss` to change:
- Primary color (links, borders)
- Sidebar colors
- Code block styling

### Add More Social Icons

In `_data/contact.yml`, uncomment and fill in additional platforms:

```yaml
- type: youtube
  icon: 'fab fa-youtube'
  url: 'https://youtube.com/@yourhandle'

- type: reddit
  icon: 'fab fa-reddit'
  url: 'https://reddit.com/u/yourhandle'
```

[Font Awesome Icons](https://fontawesome.com/icons) are available.

---

## Troubleshooting

### Posts Not Showing?
- Check the date in front matter isn't in the future
- Ensure `author: nonlouy` matches the authors.yml key
- Verify YAML formatting (spaces, colons, dashes)

### Images Not Loading?
- Use relative paths: `/assets/image/example.jpg`
- Ensure images are in the `assets/` folder
- Check file name spelling

### Site Not Updating?
- Clear your browser cache
- Wait 2-3 minutes for GitHub Pages to rebuild
- Check [GitHub Actions](https://github.com/nonlouy/username/actions) for deploy status

---

## Next Steps

1. **Add a profile picture**: Place it in `/assets/image/avatar.jpg`
2. **Update your email** if it's changed in `_config.yml`
3. **Start writing posts**: Create markdown files in `_posts/` subdirectories
4. **Customize styling**: Edit `/assets/css/custom.scss` for your brand
5. **Test locally**: Run `bundle exec jekyll serve` before pushing

---

## File Reference

| File | Purpose | Status |
|------|---------|--------|
| `_config.yml` | Site config & social info | ✅ Updated |
| `_data/authors.yml` | Author information | ✅ Updated |
| `_data/contact.yml` | Social media links | ✅ Updated |
| `_tabs/about.md` | About page | ✅ Updated |
| `_tabs/categories.md` | Categories page | ✅ Ready |
| `_tabs/tags.md` | Tags page | ✅ Ready |
| `_tabs/archives.md` | Archive/timeline page | ✅ Ready |
| `index.html` | Home page | ✅ Updated |
| `assets/css/custom.scss` | Custom styling | ✅ Created |
| `_posts/` | Your writeups | Ready |
| `Gemfile` | Dependencies | ✅ No changes needed |

---

## Support & Resources

- [Jekyll Documentation](https://jekyllrb.com/)
- [Chirpy Theme Docs](https://github.com/cotes2020/jekyll-theme-chirpy)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Markdown Guide](https://www.markdownguide.org/)

---

**Your blog is ready to go! Start writing and sharing your security journey. Happy blogging!** 🚀
