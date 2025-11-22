#!/usr/bin/env ruby

require 'yaml'
require 'date'

# Configuration
AUTHORS_FILE = '_data/authors.yml'
POSTS_DIR = '_posts'

# Load authors
unless File.exist?(AUTHORS_FILE)
  puts "Error: Authors file '#{AUTHORS_FILE}' not found."
  exit 1
end

begin
  authors_data = YAML.load_file(AUTHORS_FILE)
  valid_authors = authors_data.keys
  puts "Loaded #{valid_authors.length} authors from #{AUTHORS_FILE}."
rescue StandardError => e
  puts "Error parsing authors file: #{e.message}"
  exit 1
end

# Check posts
errors_found = false
posts = Dir.glob(File.join(POSTS_DIR, '*.markdown'))

puts "Checking #{posts.length} posts..."

posts.each do |post_path|
  begin
    content = File.read(post_path, encoding: 'UTF-8')
    if content =~ /\A(---\s*\n.*?\n?)^((---|\.\.\.)\s*$\n?)/m
      front_matter = YAML.safe_load($1, permitted_classes: [Date, Time])
      
      if front_matter.key?('author')
        author = front_matter['author']
        unless valid_authors.include?(author)
          puts "Error: Post '#{File.basename(post_path)}' references unknown author '#{author}'."
          errors_found = true
        end
      else
        # Check if there is a default author in _config.yml, otherwise this might be an issue
        # For now, we'll warn if no author is specified, although Jekyll might handle defaults.
        # Based on previous steps, we set a default author in _config.yml, so missing author key might be okay.
        # However, if the user wants strict validation, we might want to check. 
        # Let's assume explicit author is preferred or we just check if present.
        # If the user relies on defaults, this script might need to be smarter.
        # For this task, let's just check if 'author' key exists and is valid.
        # If it doesn't exist, we'll skip validation for it (assuming default applies).
        # puts "Warning: Post '#{File.basename(post_path)}' has no 'author' field."
      end
    else
      puts "Warning: Post '#{File.basename(post_path)}' has no valid front matter."
    end
  rescue StandardError => e
    puts "Error processing post '#{File.basename(post_path)}': #{e.message}"
    errors_found = true
  end
end

if errors_found
  puts "\nValidation failed: Unknown authors found."
  exit 1
else
  puts "\nValidation successful: All authors are valid."
  exit 0
end
