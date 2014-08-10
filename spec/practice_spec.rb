describe Practice do
  it 'should sum the value in array' do
    a = (1..5)
    array = a.to_a
    expect(array.sum).to eql 15
    expect(a.sum).to eql 15
  end

  it "should sum character in Range" do
    b = ('a'..'f')

    expect(b.sum).to eql 'abcdef'
    end

  it "should sum character in Range" do
    finder = Practice.new "abdcddu"

    expect(finder.inject(:+)).to eql 'au'
  end
end