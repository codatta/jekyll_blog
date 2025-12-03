#!/usr/bin/env ruby

# Script to validate and optionally auto-fix markdown inside HTML blocks
# This checks for unprocessed markdown syntax (like **bold**, *italic*) inside HTML tags like <aside>

require 'fileutils'

POSTS_DIR = '_posts'
AUTO_FIX = ENV['AUTO_FIX'] == 'true'

# Markdown patterns that should be converted to HTML
MARKDOWN_PATTERNS = {
  /\*\*([^*]+)\*\*/ => '<strong>\1</strong>',  # **bold**
  /\*([^*]+)\*/ => '<em>\1</em>',              # *italic*
  /`([^`]+)`/ => '<code>\1</code>',            # `code`
  /\[([^\]]+)\]\(([^)]+)\)/ => '<a href="\2">\1</a>',  # [link](url)
}

# HTML block tags that should contain processed markdown
HTML_BLOCK_TAGS = %w[aside div section article]

def find_html_blocks(content)
  blocks = []
  HTML_BLOCK_TAGS.each do |tag|
    # Match opening and closing tags, capturing content
    pattern = /<#{tag}[^>]*>([\s\S]*?)<\/#{tag}>/i
    content.scan(pattern) do |match|
      blocks << {
        tag: tag,
        content: match[0],
        full_match: $&
      }
    end
  end
  blocks
end

def has_unprocessed_markdown?(content)
  # Check if content contains markdown patterns that haven't been converted
  MARKDOWN_PATTERNS.keys.any? { |pattern| content.match?(pattern) }
end

def fix_markdown_in_html(content)
  # Convert markdown to HTML inside the content
  MARKDOWN_PATTERNS.each do |pattern, replacement|
    content = content.gsub(pattern, replacement)
  end
  content
end

def process_file(file_path, auto_fix = false)
  errors = []
  warnings = []
  
  content = File.read(file_path, encoding: 'UTF-8')
  original_content = content.dup
  
  # Find all HTML blocks
  html_blocks = find_html_blocks(content)
  
  html_blocks.each do |block|
    if has_unprocessed_markdown?(block[:content])
      line_number = original_content[0..original_content.index(block[:full_match])].count("\n") + 1
      
      if auto_fix
        # Auto-fix: replace the content with processed markdown
        fixed_content = fix_markdown_in_html(block[:content])
        fixed_block = block[:full_match].gsub(block[:content], fixed_content)
        content = content.gsub(block[:full_match], fixed_block)
        warnings << "Fixed markdown in <#{block[:tag]}> at line #{line_number} in #{File.basename(file_path)}"
      else
        errors << "Unprocessed markdown found in <#{block[:tag]}> at line #{line_number} in #{File.basename(file_path)}"
      end
    end
  end
  
  if auto_fix && content != original_content
    File.write(file_path, content, encoding: 'UTF-8')
    puts "✓ Auto-fixed: #{File.basename(file_path)}"
  end
  
  { errors: errors, warnings: warnings }
end

# Main execution
all_errors = []
all_warnings = []
posts = Dir.glob(File.join(POSTS_DIR, '*.markdown'))

puts "Checking #{posts.length} posts for unprocessed markdown in HTML blocks..."
puts "Auto-fix mode: #{AUTO_FIX ? 'ON' : 'OFF'}"
puts ""

posts.each do |post_path|
  result = process_file(post_path, AUTO_FIX)
  all_errors.concat(result[:errors])
  all_warnings.concat(result[:warnings])
end

# Output results
if all_warnings.any?
  puts "\n" + "="*60
  puts "WARNINGS (auto-fixed):"
  puts "="*60
  all_warnings.each { |w| puts "  ⚠ #{w}" }
end

if all_errors.any?
  puts "\n" + "="*60
  puts "ERRORS (unprocessed markdown in HTML blocks):"
  puts "="*60
  all_errors.each { |e| puts "  ✗ #{e}" }
  puts "\n💡 Tip: Set AUTO_FIX=true to automatically fix these issues"
  puts "   Example: AUTO_FIX=true ruby scripts/validate_markdown_in_html.rb"
  exit 1
end

if all_errors.empty? && all_warnings.empty?
  puts "✓ All markdown in HTML blocks is properly processed!"
  exit 0
elsif all_warnings.any? && all_errors.empty?
  puts "\n✓ All issues have been auto-fixed!"
  exit 0
end

