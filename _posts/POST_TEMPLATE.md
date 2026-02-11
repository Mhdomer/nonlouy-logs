---
title: "Post Title Here"
date: 2026-02-11
categories: [HTB]
tags: [writeup, hackthebox, ctf]
author: nonlouy
---

## Overview

Brief introduction to what this post is about.

## Challenge/Topic Description

- Key detail 1
- Key detail 2
- Key detail 3

## Solution/Walkthrough

### Step 1: Initial Reconnaissance

Description and any code snippets:

```bash
# Command line examples
nmap -sV target.com
```

### Step 2: Exploitation

Explain the vulnerability and how you exploited it:

```python
# Code examples with syntax highlighting
import requests
response = requests.get('http://example.com')
print(response.text)
```

### Step 3: Flag/Result

Final steps to get the flag or complete the challenge.

## Key Learnings

- Learning 1
- Learning 2
- Learning 3

## Resources

- [Resource 1](https://example.com)
- [Resource 2](https://example.com)

## References

- OWASP
- PayloadsAllTheThings
- GTFOBins

---

## Tips for Writing Posts

1. **Use clear headings** - H2 for sections, H3 for subsections
2. **Add code blocks** - Use triple backticks with language: ```bash, ```python, etc.
3. **Include images** - `![Description](/assets/image/folder/image.jpg)`
4. **Link resources** - `[Text](URL)`
5. **Keep it clean** - Use lists, tables, and code formatting
6. **Date format** - YYYY-MM-DD (e.g., 2026-02-11)
7. **Author** - Always use `author: nonlouy`

### Post Front Matter Fields

```yaml
---
title: "Descriptive Title"           # Required: Post title
date: 2026-02-11                     # Required: YYYY-MM-DD format
categories: [CategoryName]            # Optional: One or more categories
tags: [tag1, tag2, tag3]              # Optional: Multiple tags
author: nonlouy                       # Required: Your author ID
---
```

### Categories Available

- HTB (HackTheBox)
- TryHackMe
- RootMe
- oscp_12W
- PortSwiggerLabs
- Or create your own!

### Suggested Tags

```
writeup, ctf, hackthebox, tryhackme, root-me, oscp
web, reversing, cryptography, forensics, networking
rce, sqli, xss, ssrf, pathtraversal, commandinjection
```
