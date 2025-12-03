# Rebuild Jekyll Site - Verify Fix

## Quick Steps

### 1. Clean old build files
```bash
rm -rf _site
```

### 2. Rebuild the site
```bash
bundle exec jekyll build
```

### 3. Verify the fix is working

Check if markdown is properly converted in the generated HTML files:

```bash
# Check for unconverted markdown (should find nothing)
grep -n '\*\*ERC-8004\*\*' _site/other/2025/11/29/ERC-8004-*Codatta*.html

# Check for converted HTML (should find matches)
grep -n '<strong>ERC-8004</strong>' _site/other/2025/11/29/ERC-8004-*Codatta*.html
```

### 4. Local preview (optional)

```bash
bundle exec jekyll serve
```

Then open http://localhost:4000 in your browser to see the results.

## Verification Checklist

- [ ] `_config.yml` contains `parse_block_html: true` and `parse_span_html: true`
- [ ] After rebuilding, `**bold**` in generated HTML is converted to `<strong>bold</strong>`
- [ ] Content inside `<aside>` tags displays correctly as HTML format
- [ ] Styles are properly applied when viewing in browser (gray background, left border, etc.)

## Troubleshooting

1. **Ruby version issue**: Make sure you're using the correct Ruby version (project requires 3.3.8)
   ```bash
   rbenv local 3.3.8  # if using rbenv
   # or
   rvm use 3.3.8      # if using rvm
   ```

2. **Dependency issues**: Reinstall dependencies
   ```bash
   bundle install
   ```

3. **Clear cache**: If issues persist
   ```bash
   rm -rf _site .jekyll-cache
   bundle exec jekyll build
   ```

