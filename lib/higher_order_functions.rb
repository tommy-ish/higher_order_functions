# frozen_string_literal: true

require_relative "higher_order_functions/version"
# Higher-order functions
module HigherOrderFunctions
  refine Object do
    def unfold(condition, function)
      raise ArgumentError unless block_given?

      seed = self
      array = []
      until condition[seed]
        array << function[seed]
        seed = yield(seed)
      end
      array
    end

    def sequence
      raise ArgumentError unless block_given?

      element = self
      Enumerator.new do |enumerator|
        enumerator << element
        loop { enumerator << (element = yield(element)) }
      end
    end
  end
  refine Array do
    def scan
      raise ArgumentError unless block_given?

      drop(1).inject([first]) { |result, item| result << yield(result.last, item) }
    end
  end
  refine Enumerable do
    def inject_right(init: nil, &block)
      raise ArgumentError unless block_given?

      init ? reverse_each.inject(init, &block) : reverse_each.inject(&block)
    end
    alias_method :reduce_right, :inject_right
  end
end
