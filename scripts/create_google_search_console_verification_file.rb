#! /usr/bin/env ruby
# frozen_string_literal: true

require 'dotenv/load'

TOKEN_NAME = 'GOOGLE_SEARCH_CONSOLE_VERIFICATION_TOKEN'
Dotenv.require_keys(TOKEN_NAME)

token = ENV[TOKEN_NAME]
File.open("_site/#{token}.html", 'w+') do |file|
  file.write("google-site-verification: #{token}.html")
end
