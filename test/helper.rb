require "bundler/setup"
Bundler.require :production
require "minitest/autorun"
require 'minitest_tags' if ENV["TAG"] 
