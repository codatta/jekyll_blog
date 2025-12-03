# Local Preview Guide

## Quick Start

### 1. Install Dependencies
```bash
bundle install
```

### 2. Start Local Server
```bash
bundle exec jekyll serve
```

### 3. Open in Browser
Open http://localhost:4000 in your browser.

## Common Issues

### Issue: `mint dev` doesn't work
**Solution**: `mint` is a Mintlify CLI tool, not for Jekyll. Use `bundle exec jekyll serve` instead.

### Issue: `bundler: command not found: jekyll`
**Solution**: Run `bundle install` first to install dependencies.

### Issue: Ruby version mismatch
**Solution**: Make sure you're using Ruby 3.3.8 (as specified in `.ruby-version`):
```bash
rbenv local 3.3.8  # if using rbenv
# or
rvm use 3.3.8      # if using rvm
```

## Additional Options

### Watch for changes (default)
```bash
bundle exec jekyll serve
```
The server automatically rebuilds when you change files.

### Build without serving
```bash
bundle exec jekyll build
```

### Serve on different port
```bash
bundle exec jekyll serve --port 4001
```

### Serve with drafts
```bash
bundle exec jekyll serve --drafts
```

