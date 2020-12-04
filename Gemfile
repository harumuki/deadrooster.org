# frozen_string_literal: true

source 'https://rubygems.org'
gem 'github-pages'

gem 'jekyll', '~> 4.0.1'

# This is a lightweight Jekyll theme we want to use.
gem 'kids',
    git: 'https://github.com/dirtyhenry/kids.git',
    branch: 'master'

# If you have any plugins, put them here!
group :jekyll_plugins do
  gem 'buckygem',
      git: 'https://github.com/dirtyhenry/buckygem.git',
      branch: 'master'

  # As of version 3.0.12, jekyll-assets can't work with Jekyll 4
  # ... but the master branch can
  gem 'jekyll-assets',
      git: 'https://github.com/envygeeks/jekyll-assets',
      branch: 'master'
  gem 'jekyll-commonmark'
  gem 'jekyll-feed', '~> 0.12'
  gem 'jekyll-sitemap'
end

# Windows and JRuby does not include zoneinfo files,
# so bundle the tzinfo-data gem and associated library.
install_if -> { RUBY_PLATFORM =~ /mingw|mswin|java/ } do
  gem 'tzinfo', '~> 1.2'
  gem 'tzinfo-data'
end

# Performance-booster for watching directories on Windows
gem 'wdm', '~> 0.1.1', install_if: Gem.win_platform?

# Ruby linter
gem 'rubocop', require: false

# Load environment variables
gem 'dotenv'
