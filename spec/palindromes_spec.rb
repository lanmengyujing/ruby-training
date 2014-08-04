describe Palindromes do

  before() do
    subject = Palindromes.new
  end
  it 'should return correct result' do
    result = 5.palindrome_below(2)

    expect(result).to eql([1, 3])
  end

  it 'should' do
    result = [1, 2, 3, 4].filter { |e| e >= 2 }

    expect(result).to eql([2, 3, 4])
  end

end