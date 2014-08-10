class Person
  attr_accessor :name
  include Enumerable

  def initialize(name)
    @name = name
  end

  def <=> (person)
    @name <=> person.name
  end

  def to_s
    @name
  end
end



