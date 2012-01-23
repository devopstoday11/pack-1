# encoding: utf-8
$:.unshift File.join(File.dirname(__FILE__), 'lib')

require 'rubygems'
require 'bundler'
require 'pack'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "pack"
  gem.homepage = "http://github.com/seryl/pack"
  gem.license = "MIT"
  gem.summary = %Q{pack.io console client}
  gem.description = %Q{pack.io console client}
  gem.email = "josh@pack.io"
  gem.authors = ["Josh Toft"]
  gem.version = Pack::VERSION
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = Pack::VERSION

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "pack #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
