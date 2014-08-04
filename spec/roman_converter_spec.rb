describe RomanConverter do

  it 'should convert number to roman' do
    result = RomanConverter.encode(1234)

    expect(result).to eql "MCCXXXIV"
  end

end