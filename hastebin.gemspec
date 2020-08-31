# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "./lib/hastebin/version"

Gem::Specification.new do |s|
  s.name        = "hastebin"
  s.version     = Hastebin::VERSION
  s.authors     = ["Astin"]
  s.email       = [""]
  s.summary     = "CLI tool that uploads text to hasteb.in ."
  s.description = ""
  s.executables   = ["hastebin"]
  s.license     = "MIT"
  s.require_paths = ['lib']
  s.files         = ["lib/hastebin.rb"]
  s.metadata = {
    'source_code_uri'   => 'https://github.com/astindev/hastebin/',
    'homepage_uri'      => 'https://rubygems.org/gems/hastebin',
    'changelog_uri'     => 'https://github.com/astindev/hastebin/blob/master/CHANGELOG.md',
    'bug_tracker_uri'   => 'https://github.com/astin/hastebin/issues',
    'documentation_uri' => 'https://github.com/astindev/hastebin/'
  }
  s.add_dependency 'json'
  s.add_dependency 'colorize'
end
