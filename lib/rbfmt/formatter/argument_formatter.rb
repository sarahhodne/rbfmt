require 'rbfmt/formatter'

module Rbfmt
  class Formatter
    class ArgumentFormatter < Formatter
      class Argument < Formatter
        register :arg

        def format
          node.children.first.to_s
        end
      end

      class OptionalArgument < Formatter
        register :optarg

        def format
          "#{name} = #{value}"
        end

        private

        def name
          node.children.first.to_s
        end

        def value
          visit(node.children.last)
        end
      end

      class RestArgument < Formatter
        register :restarg

        def format
          "*#{node.children.first}"
        end
      end

      class BlockArgument < Formatter
        register :blockarg

        def format
          "&#{node.children.first}"
        end
      end

      register :args

      def format
        if node.children.any?
          '(' + node.children.map { |c| visit(c) }.join(', ') + ')'
        else
          ''
        end
      end
    end
  end
end
