require 'rbfmt/formatter'

module Rbfmt
  class Formatter
    class InspectFormatter < Formatter
      register :sym, :str

      def format
        node.children.first.inspect
      end
    end
  end
end
