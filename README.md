# Codatta Blog

Official blog for [Codatta](https://codatta.io).

## 🏗️ Architecture

This blog is built with [Jekyll](https://jekyllrb.com/) and uses the [Minima](https://github.com/jekyll/minima) theme as a base, with custom overrides for branding and functionality.

### Key Directories
- `_posts/`: Blog posts go here. Format: `YYYY-MM-DD-title.markdown`.
- `_data/authors.yml`: Author profiles (name, bio, social links).
- `_layouts/`: Custom layouts (overrides `post.html` to add author bio and share buttons).
- `_includes/`: Custom includes (`head.html` for fonts, `footer.html` for branding).
- `assets/css/brand.scss`: Custom branding styles (Inter font, colors).

## 🤝 Contribution

In short, the flow is: 👣 clone the repo → 🌿 create a branch → ✍️ write or edit a post → ✅ run checks → 🔀 open a pull request → 🚀 merge to `main` and let CI deploy.

### 🧰 Prerequisites
- Ruby 2.6+
- Bundler

### 🛠️ Setup
```bash
bundle install
```

### 🧪 Running Locally
```bash
bundle exec jekyll serve
```

### ✍️ Writing Guide for Contributors

Welcome to the Codatta Blog! This guide will help you create high-quality posts that look great on our site. 🙂

### 1. 🗂️ File Naming & Location
All posts must be created in the `_posts` directory. The filename format is strict and determines the URL of your post.

**Format:** `YYYY-MM-DD-your-title-slug.markdown`

- **YYYY-MM-DD**: The date of publication (e.g., `2025-11-21`).
- **your-title-slug**: A hyphen-separated version of your title (lowercase).

**Example:** `_posts/2025-11-21-welcome-to-codatta.markdown`

### 2. 🧾 Front Matter
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

### 3. ✨ Markdown Cheatsheet

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

### 4. ✅ Validation
Before submitting, run the author validation script to ensure your metadata is correct:
```bash
./scripts/validate_authors.rb
```

### 🆕 Adding a New Post
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

### 👤 Adding an Author
1. Edit `_data/authors.yml`.
2. Add a new entry:
   ```yaml
   username:
     name: Full Name
     bio: Short bio.
     avatar: /assets/images/avatar.jpg
     twitter: handle
   ```

## 🔧 Git & GitHub Workflow

This section shows a simple, consistent way to use branches and pull requests and how your changes get deployed. 

### 1. 🌿 Work on an Update Branch

We recommend working on a dedicated branch for each logical change instead of committing directly to `main`.

**Branch naming suggestions:**

- `feature/<short-description>` — new features or new posts  
  - e.g. `feature/erc8004-post-formatting`
- `fix/<short-description>` — bug fixes or small content fixes  
  - e.g. `fix/typo-erc8004-title`
- `chore/<short-description>` — tooling, config, or docs  
  - e.g. `chore/update-readme-git-workflow`

**Create and switch to a branch from `main`:**

```bash
git checkout main
git pull origin main        # make sure you're up to date
git checkout -b feature/erc8004-post-formatting
```

After editing files locally, you can check what changed:

```bash
git status
git diff
```

When you're ready to share the branch with the remote:

```bash
git push -u origin feature/erc8004-post-formatting
```

The `-u` flag sets this branch to track the remote branch, so future pushes can use just `git push`.

### 2. 💾 Commit Changes & Write Good Commit Messages

Once you are satisfied with your changes:

```bash
git add _posts/2025-11-25-erc-8004-mcp-on-ethereum.markdown
git add README.md
# or:
# git add .
```

Then create a commit:

```bash
git commit -m "Improve formatting of ERC-8004 post and document git workflow"
```

**Commit message best practices:**

- Use a short, imperative sentence in the subject line:  
  - `Add ERC-8004 architecture section`  
  - `Fix typos in why-codatta post`
- Keep the subject under ~72 characters when possible.
- If needed, add a blank line and a longer description below the subject.

**Using AI-native IDEs (Cursor, etc.):**

- Tools like Cursor can suggest commit messages automatically based on your diffs.
- Treat these as drafts: review and edit them so they stay accurate and concise.
- Avoid leaking sensitive information (tokens, internal URLs, etc.) into commit messages.

### 3. 🔀 Open a Pull Request (PR)

After pushing your branch to GitHub:

1. Go to the repository on GitHub.
2. GitHub will usually show a banner like “Compare & pull request” for your new branch.
3. Open a PR with:
   - **Base branch**: `main` (or `origin/main`)
   - **Compare branch**: your feature branch, e.g. `feature/erc8004-post-formatting`
4. Fill in:
   - A clear **title** (similar to your main commit message).
   - A **description** explaining:
     - What you changed
     - Why you changed it
     - Any screenshots for visual changes (optional but helpful)

**Requesting reviewers & quality gating:**

- Add one or more reviewers (e.g. core maintainers of the blog).
- The repo may have checks configured (CI, linting, build, etc.):
  - Make sure all checks are green before asking for merge.
- Be open to feedback:
  - Apply suggested changes locally.
  - Commit and push again to the same branch — the PR will update automatically.

### 4. 🚀 After PR Approval & Merge

Once the PR is approved and merged into `main` on GitHub:

1. **Update your local `main`:**
   ```bash
   git checkout main
   git pull origin main
   ```

2. **Clean up your feature branch (optional but recommended):**
   ```bash
   git branch -d feature/erc8004-post-formatting          # delete local branch
   git push origin --delete feature/erc8004-post-formatting  # delete remote branch
   ```

3. **Automatic deployment:**
   - This blog is intended to be deployed from the `main` branch (e.g. via GitHub Pages or a CI pipeline).
   - After your PR is merged:
     - GitHub triggers the configured deployment workflow.
     - The site is rebuilt with Jekyll using the latest `main`.
     - Within a short time, your changes go live at the configured URL.
   - You usually **do not** need to deploy manually; just wait for the CI/deployment to finish.

4. **Working on the next change:**
   - Start again from an up-to-date `main`:
     ```bash
     git checkout main
     git pull origin main
     git checkout -b feature/next-change
     ```

Following this flow keeps the history clean, makes reviews easier, and ensures that what you see locally matches what is deployed after merges.
