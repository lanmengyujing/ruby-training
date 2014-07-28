describe HashSpliter do
  before do
    subject = Blackjack.new
  end

  it 'should return two array after given split key' do
    hash = {:a => 1, :b => 2, :c => 3, :d => 4, :e => 5, :f => 6}
    results = subject.split_hash_by_key(hash, :c, :e)

    expect(results).to eql([{:a => 1, :b => 2}, {:c => 3, :d => 4}, {:e => 5, :f => 6}])
  end

end