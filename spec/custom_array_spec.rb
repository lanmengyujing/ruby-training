describe CustomArray do

  it 'should return correct data' do
    result = [1, 2, 3, 4].filter { |e| e >= 2 }

    expect(result).to eql([2, 3, 4])
  end

  it 'should split the array to several parts' do
    a = (1..5).to_a
    result = CustomArray.split_array(a, 2)

    expect(result).to eql([[1, 2, 3], [4, 5]])
  end

  it 'should return correct data for inject' do
    array = (5..10).to_a
    result = array.inject_new { |sum, n| sum + n }

    expect(result).to eql 45
  end


  it 'should return correct data when given initial result' do
    array = (5..10).to_a
    result = array.inject_new(1) { |sum, n| sum + n }

    expect(result).to eql 46
  end

  it 'should return correct data' do
    array = (1..6).to_a
    result = array.group_by_new { |i| i%3 }

    expect(result).to eql ({1 => [1, 4], 2 => [2, 5], 0 => [3, 6]})
  end
end
