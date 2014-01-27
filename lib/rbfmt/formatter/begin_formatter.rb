require 'rbfmt/formatter'

module Rbfmt
  class Formatter
    class BeginFormatter < Formatter
      register :begin

      def format
        node.children.map { |child| visit(child) }.join("\n")
      end
    end
  end
end
