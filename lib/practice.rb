module Sum
  def sum
    inject(:+)
  end
end

class Array
  include Sum
end

class Range
  include Sum
end

class Practice
  include Enumerable

  def initialize input
    @vowels = input.scan(/a|e|i|o|u/)
  end

  def each
    @vowels.each do |x|
      yield x
    end
  end
end

