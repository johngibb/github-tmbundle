#!/usr/bin/env ruby

$:.unshift(File.dirname(__FILE__) + "/../lib")
require "rubygems"
require "show_in_github"

begin
  url = ShowInGitHub.history_url_for(ENV['TM_FILEPATH'])
  `open #{url}`
rescue NotGitRepositoryError
  puts "File/project not a git repository"
rescue NotGitHubRepositoryError
  puts "File/project has not been pushed to a github repository"
end