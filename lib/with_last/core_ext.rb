class Enumerator
  def with_last
    return to_enum :with_last unless block_given?

    each do |*args|
      self.next
      peek
      yield(*args, false)
    rescue StopIteration => _e
      yield(*args, true)
    end
  end
end

module Enumerable
  def each_with_last
    return to_enum :each_with_last unless block_given?

    each.with_last { |*args, last| yield(*args, last) }
  end
end
