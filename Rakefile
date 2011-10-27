# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
require './lib/elibri_onix_dict/version.rb'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "elibri_onix_dict"
  gem.version = Elibri::ONIX::Dict::Version::STRING
  gem.homepage = "http://github.com/elibri/elibri_onix_dict"
  gem.license = "MIT"
  gem.summary = %Q{EDItEUR ONIX format dictionary helpers used in eLibri publication system}
  gem.description = %Q{EDItEUR ONIX format dictionary helpers used in eLibri publication system}
  gem.email = "marcin@urbanski.vdl.pl"
  gem.authors = ["Marcin Urbanski"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

require 'rcov/rcovtask'
Rcov::RcovTask.new do |test|
  test.libs << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
  test.rcov_opts << '--exclude "gems/*"'
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = Elibri::ONIX::Dict::Version::STRING

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "elibri_onix_dict #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
