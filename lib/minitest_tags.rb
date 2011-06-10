unless defined?(MiniTest) 
  begin 
    require "minitest/autorun"
  rescue
    require "rubygems"
    require "minitest/autorun"
  end
end

if ENV["TAG"]
  require "minitest/tags"
  class  MiniTest::Spec
    include Minitest::Tags
  end
end

