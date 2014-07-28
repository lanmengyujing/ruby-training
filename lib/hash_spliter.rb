class HashSpliter
  def split_hash_by_key(hash, *args)
    result = []
    args.each do |key|
      raise "keys #{key} not found in hashes" if hash.has_key?(key).nil?
    end

    hash.slice_before do |key, value|
      args.include? key
    end.each do |after_sliced|
      new_hash = {}
      p after_sliced
      after_sliced.each do |sliced|
        new_hash = new_hash.merge Hash[*sliced]
      end
      result << new_hash
    end
    result
  end
end