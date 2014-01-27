require 'rbfmt/formatter'

module Rbfmt
  class Formatter
    class SingletonFormatter < Formatter
      register :self, :true, :false, :nil

      def format
        node.type.to_s
      end
    end
  end
end
