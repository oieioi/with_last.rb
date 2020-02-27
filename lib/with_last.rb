require "with_last/version"

module WithLast
  class Error < StandardError; end
  class ::Array
    def each_with_last
      each_with_index { |item, index| yield(item, last?(index)) }
    end

    def last?(index)
      size == (index + 1)
    end
  end
end
