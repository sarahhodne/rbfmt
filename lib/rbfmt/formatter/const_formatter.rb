require 'rbfmt/formatter'

module Rbfmt
  class Formatter
    class ConstFormatter < Formatter
      register :const

      def format
        node.children.last.to_s
      end
    end
  end
end
