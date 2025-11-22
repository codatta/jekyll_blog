# Codatta Blog

Official blog for [Codatta](https://codatta.io).

## Architecture

This blog is built with [Jekyll](https://jekyllrb.com/) and uses the [Minima](https://github.com/jekyll/minima) theme as a base, with custom overrides for branding and functionality.

### Key Directories
- `_posts/`: Blog posts go here. Format: `YYYY-MM-DD-title.markdown`.
- `_data/authors.yml`: Author profiles (name, bio, social links).
- `_layouts/`: Custom layouts (overrides `post.html` to add author bio and share buttons).
- `_includes/`: Custom includes (`head.html` for fonts, `footer.html` for branding).
- `assets/css/brand.scss`: Custom branding styles (Inter font, colors).

## Contribution

### Prerequisites
- Ruby 2.6+
- Bundler

### Setup
```bash
bundle install
```

### Running Locally
```bash
bundle exec jekyll serve
```

### ✍️ Writing Guide for Contributors

Welcome to the Codatta Blog! This guide will help you create high-quality posts that look great on our site.

### 1. File Naming & Location
All posts must be created in the `_posts` directory. The filename format is strict and determines the URL of your post.

**Format:** `YYYY-MM-DD-your-title-slug.markdown`

- **YYYY-MM-DD**: The date of publication (e.g., `2025-11-21`).
- **your-title-slug**: A hyphen-separated version of your title (lowercase).

**Example:** `_posts/2025-11-21-welcome-to-codatta.markdown`

### 2. Front Matter
Every post must start with "Front Matter" - a block of YAML configuration between two `---` lines.

```yaml
---
layout: post
title:  "Your Post Title Here"
date:   2025-11-21 09:00:00 +0800
categories: [AI]                  # Options: AI, Blockchain, Ecosystem & Community, Other
author: alice_smith               # Must match a key in _data/authors.yml
status: research                  # Options: official, research, opinion
image: /assets/images/your-image.png
---
```

### 3. Markdown Cheatsheet

We use standard Markdown with some enhancements. Here are common elements you'll use:

#### Text Formatting
- **Bold**: `**text**` -> **text**
- *Italic*: `*text*` -> *text*
- `Code`: `` `text` `` -> `text`

#### Headings
Use `#` for headings. Start with `##` for sections within your post (since `h1` is the post title).
```markdown
## Main Section
### Sub-section
```

#### Lists
**Bulleted:**
- Item 1
- Item 2

**Numbered:**
1. First step
2. Second step

#### Links & Images
- **Link**: `[Link Text](URL)`
- **Image**: `![Alt Text](/path/to/image.png)`
  - *Tip: Place images in `assets/images/`.*

#### Blockquotes
Use `>` to highlight quotes or key takeaways.
> "Data quality is the ceiling of AI performance."

#### Code Blocks
Use three backticks followed by the language name for syntax highlighting.

```python
def hello_world():
    print("Hello, Codatta!")
```

#### Tables
Create tables using hyphens and pipes.

| Feature | Description |
| :--- | :--- |
| **Speed** | Fast rendering |
| **Security** | Blockchain verified |

---

### 4. Validation
Before submitting, run the author validation script to ensure your metadata is correct:
```bash
./scripts/validate_authors.rb
```

### Adding a New Post
1. Create a file in `_posts/` named `YYYY-MM-DD-your-title.markdown`.
2. Add the following front matter:
   ```yaml
   ---
   layout: post
   title:  "Your Title"
   date:   YYYY-MM-DD HH:MM:SS +0800
   categories: [AI | Blockchain | Eco & Community | Other]
   author: alice_smith  # Must match a key in _data/authors.yml
   status: opinion      # opinion, research, or official
   ---
   ```
3. Write your content in Markdown.

### Adding an Author
1. Edit `_data/authors.yml`.
2. Add a new entry:
   ```yaml
   username:
     name: Full Name
     bio: Short bio.
     avatar: /assets/images/avatar.jpg
     twitter: handle
   ```
