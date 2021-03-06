# frozen_string_literal: true

# open core class
class Enumerator
  # Iterates with whether the item is the last item.
  #
  #   [1,2].each.with_last { |item, is_last| puts [item, is_last] }
  #   # => [1, false] [2, true]
  #
  #
  #   [1,2].map.with_last { |item, is_last| "#{item}#{is_last ? '.' : ', '}" }.join
  #   # => "1, 2."
  #
  #
  #   %w[hoge fuga].map.with_index.with_last { |item, index, is_last| "#{index}: #{item}#{is_last ? '.' : ', '}" }.join
  #   # => "0:hoge, 1:fuga."
  def with_last
    return to_enum :with_last unless block_given?

    each do |*args|
      self.next
      yield(*args, last?)
    end
  end

  # Returns whether the enumerator is last.
  #
  #   e = [1,2].to_enum
  #   e.last? # => false
  #   e.next  # => 1
  #   e.last? # => false
  #   e.next  # => 2
  #   e.last? # => true
  #
  def last?
    peek
    false
  rescue StopIteration => _e
    true
  end
end

# open core class
module Enumerable
  # Iterates with whether the item is the last item.
  #
  #   [1,2].each_with_last { |item, is_last| puts [item, is_last] }
  #   # => [1, false] [2, true]
  def each_with_last
    return to_enum :each_with_last unless block_given?

    each.with_last { |*args, last| yield(*args, last) }
  end
end
