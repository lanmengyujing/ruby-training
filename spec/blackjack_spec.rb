describe Blackjack do

  before() do
    subject = Blackjack.new
  end

  it 'should return correct result' do
    result =subject.score_hand(["5", "4", "3", "2", "A", "K"])
    expect(result).to eql(25)
  end
  it 'should return correct result if contains three A ' do
    result =subject.score_hand(["A", "10", "A", "A"])
    expect(result).to eql(13)
  end
  it 'should return correct result for pure numbers' do
    result =subject.score_hand(["5", "3", "7"])
    expect(result).to eql(15)
  end

  it 'should return correct result ' do
    result =subject.score_hand(["A", "J"])
    expect(result).to eql(21)
  end

  it 'should return correct result for one A ' do
    result =subject.score_hand(["A"])
    expect(result).to eql(11)
  end
end

