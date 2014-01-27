require 'rbfmt/formatter'

module Rbfmt
  class Formatter
    class ModuleFormatter < Formatter
      register :module

      def format
        "module #{visit(node.children.first)}\nend"
      end
    end
  end
end
