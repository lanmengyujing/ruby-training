describe Person do

  it 'should sort the person correctly' do
    p1 = Person.new("Matz")
    p2 = Person.new("Guido")
    p3 = Person.new("Larry")

    puts [p1, p2, p3].sort # => Guido\nLarry\nMatz

  end
end

