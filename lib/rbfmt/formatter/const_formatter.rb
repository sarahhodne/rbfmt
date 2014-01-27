require 'rbfmt/formatter'

module Rbfmt
  class Formatter
    class ConstFormatter < Formatter
      register :const

      def format
        [scope, node.children.last.to_s].compact.join('::')
      end

      private

      def scope
        visit(node.children.first) if node.children.first
      end
    end
  end
end
