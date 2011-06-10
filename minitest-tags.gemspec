#-*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "minitest/version"

Gem::Specification.new do |s|
  s.name        = "minitest-tags"
  s.version     = Minitest::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["wenbo", "Lorenzo Planas"]
  s.email       = ["yiyun6674@hotmail.com", "lplanas@qindio.com"]
  s.homepage    = ""
  s.summary     = %q{add tags for minitest}
  s.description = <<-EOF
    when you invode the it method that coming with Minitest::Spec, 
    you can tag a test case by the words that quoted by parenthesis, then  
    specify the tag at your rake task, and the test case related to this tag 
    will be invoked
    EOF

  s.add_development_dependency "minitest", "~>2.2.2"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test}/*`.split("\n")
  s.require_paths = ["lib"]
end
