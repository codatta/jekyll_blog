# Scripts Documentation

## validate_markdown_in_html.rb

检测并可选地自动修复 HTML 块内未处理的 markdown 格式问题。

### 问题描述

当在 Jekyll markdown 文件中使用 HTML 标签（如 `<aside>`）时，如果 kramdown 配置不正确，标签内的 markdown 格式（如 `**bold**`、`*italic*`）可能不会被转换为 HTML，导致在博客上显示为原始 markdown 文本。

### 使用方法

#### 1. 检测问题（不修复）

```bash
ruby scripts/validate_markdown_in_html.rb
```

#### 2. 自动修复问题

```bash
AUTO_FIX=true ruby scripts/validate_markdown_in_html.rb
```

### 在 CI 中使用

已配置 GitHub Actions 工作流（`.github/workflows/validate-markdown.yml`），会在每次 push 或 PR 时自动检查。

### 配置要求

确保 `_config.yml` 中包含以下配置：

```yaml
markdown: kramdown
kramdown:
  parse_block_html: true
  parse_span_html: true
```

### 检测的 HTML 标签

- `<aside>`
- `<div>`
- `<section>`
- `<article>`

### 支持的 Markdown 格式

- `**bold**` → `<strong>bold</strong>`
- `*italic*` → `<em>italic</em>`
- `` `code` `` → `<code>code</code>`
- `[link](url)` → `<a href="url">link</a>`

