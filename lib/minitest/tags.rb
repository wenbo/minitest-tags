module Minitest
  module Tags
    def self.included(base)
      class << base 
        remove_method :it
      end
      base.extend ClassMethods
    end

    module ClassMethods
      def it desc, &block
        tags = desc.match(/\(([\s\S]+)\)/)[1].split(",").map(&:strip) if desc.match(/\(([\s\S]+)\)/)
        tags = tags || [] 
        tag = ENV["TAG"]
        block =  proc { skip "(only the desc including tag #{tag} available)" } unless tags.include?(tag)
        block ||= proc { skip "(no tests defined)" }

        @specs ||= 0
        @specs += 1

        name = "test_%04d_%s" % [ @specs, desc.gsub(/\W+/, '_').downcase ]

        define_method name, &block

        self.children.each do |mod|
          mod.send :undef_method, name if mod.public_method_defined? name
        end 
        end # it 
      end # ClassMethods 
    end #Tags
  end #Minitest
