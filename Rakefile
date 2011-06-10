# encoding: utf-8
require "rake/testtask"
require "bundler/setup"
Bundler.require :production

Rake::TestTask.new do |test|
  test.libs << "feaure"
  test.test_files = FileList["test/**/*_spec.rb"]
  test.verbose = true
end

namespace :test do
  desc "override the 'it' method to invoke the test case that marked by tag "
  task :on, :tag do |t, args| 
    ENV["TAG"] = args[:tag] 
    Rake::Task[:test].invoke
  end
end

