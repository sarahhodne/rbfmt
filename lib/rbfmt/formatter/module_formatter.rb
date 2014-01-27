require 'rbfmt/formatter'

module Rbfmt
  class Formatter
    class ModuleFormatter < Formatter
      register :module, :class, :sclass

      def format
        "#{type} #{name}#{superclass}\n#{body}end"
      end

      private

      def type
        if node.type == :sclass
          :class
        else
          node.type
        end
      end

      def name
        if node.type == :sclass
          "<< #{visit(node.children.first)}"
        else
          visit(node.children.first)
        end
      end

      def superclass
        if node.type != :sclass && node.children[1]
          " < #{visit(node.children[1])}"
        end
      end

      def body
        indent(visit(node.children.last)) + "\n" if node.children.last
      end
    end
  end
end
