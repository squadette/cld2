#!/usr/bin/env rake
require "bundler/gem_tasks"

require "rspec/core/rake_task"

task :compile do
  Dir.chdir('ext/cld') do
    sh 'ruby extconf.rb' unless File.exist?('Makefile')
    sh 'make'
  end
end

RSpec::Core::RakeTask.new("spec")
task :spec => :compile
task :default => :spec
