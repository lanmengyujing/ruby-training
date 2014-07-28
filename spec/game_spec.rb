describe Game do
  before do
  end

  it 'should return fuzz when number can be divided by three' do
    number = 3
    result = Game.run(number)

    expect(result).to eql('Fuzz')
  end

  it 'should return buzz when number can be divided by five' do
    number = 5
    result = Game.run(number)

    expect(result).to eql('Buzz')
  end

  it 'should return FuzzBuzz when number can be divided by five and three' do
    number = 15
    result = Game.run(number)

    expect(result).to eql('FuzzBuzz')
  end
end