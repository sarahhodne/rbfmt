require 'rbfmt/formatter'

module Rbfmt
  class Formatter
    class SendFormatter < Formatter
      register :send

      def format
        receiver + selector + arguments
      end

      private

      def receiver
        node.children.first ? visit(node.children.first) + '.' : ''
      end

      def selector
        node.children[1].to_s
      end

      def arguments
        args = node.children[2..-1]

        args.any? ? '(' + args.map { |arg| visit(arg) }.join(', ') + ')' : ''
      end
    end
  end
end
