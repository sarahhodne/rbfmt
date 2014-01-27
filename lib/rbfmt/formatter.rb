module Rbfmt
  class Formatter
    module Registry
      def add(node_types, const = nil)
        Array(node_types).each do |node_type|
          formatters[node_type.to_sym] = const
        end
      end

      def [](node_type)
        formatters.fetch(node_type.to_sym) { raise "No formatter for node type #{node_type}" }
      end

      private

      def formatters
        @formatters ||= {}
      end
    end

    extend Registry

    def self.register(*node_types)
      Rbfmt::Formatter.add(node_types, self)
    end

    attr_reader :node

    def initialize(node)
      @node = node
    end

    protected

    def visit(other)
      Formatter[other.type].new(other).format
    end
  end
end
