require 'rbfmt/formatter'

module Rbfmt
  class Formatter
    class DefFormatter < Formatter
      register :def

      def format
        "def #{name}#{arguments}\n#{body}end"
      end

      private

      def name
        node.children.first
      end

      def arguments
        visit(node.children[1])
      end

      def body
      end
    end
  end
end
