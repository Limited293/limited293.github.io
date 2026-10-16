#!/usr/bin/env ruby
# frozen_string_literal: true

require "yaml"

files = Dir.glob("**/*.md").sort
routes = {}

files.each do |path|
  source = File.read(path, encoding: "UTF-8")
  match = source.match(/\A---\n(.*?)\n---\n/m)
  abort("Missing or malformed front matter: #{path}") unless match
  front_matter = YAML.safe_load(match[1]) || {}
  permalink = front_matter["permalink"]
  abort("Missing permalink: #{path}") unless permalink
  abort("Duplicate permalink #{permalink}: #{routes[permalink]} and #{path}") if routes.key?(permalink)
  routes[permalink] = path
end

errors = []
files.each do |path|
  File.read(path, encoding: "UTF-8").scan(/\{\{\s*['"](\/[^'"]+)['"]\s*\|\s*relative_url\s*\}\}/).flatten.each do |route|
    next if route.end_with?(".html") # Preserved legacy UtaShirabe redirects.
    errors << "Missing internal route #{route} linked from #{path}" unless routes.key?(route)
  end
end

abort(errors.join("\n")) unless errors.empty?
puts "Site source check passed: #{files.length} pages, valid front matter, unique permalinks, and valid internal routes."
