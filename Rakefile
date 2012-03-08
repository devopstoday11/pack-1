# encoding: utf-8
$:.unshift File.join(File.dirname(__FILE__), 'lib')

require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake/dsl_definition'
require 'rake'

require 'jeweler'
require 'pack'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "pack"
  gem.homepage = "http://github.com/pack/pack"
  gem.license = "MIT"
  gem.summary = %Q{pack.io console client}
  gem.description = %Q{pack.io console client}
  gem.email = "josh@pack.io"
  gem.authors = ["Josh Toft"]
  gem.version = Pack::VERSION
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

desc "Code coverage detail"
task :coverage do
  ENV['COVERAGE'] = "true"
  Rake::Task["spec"].execute
end

task :default => :spec

require 'yard'
YARD::Rake::YardocTask.new
