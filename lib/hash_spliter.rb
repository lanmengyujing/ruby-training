class HashSpliter
  def split_hash_by_key(hash, *args)
    result = []
    args.each do |key|
      raise "keys #{key} not found in hashes" if !hash.has_key?(key)
    end

    hash.slice_before do |key, value|
      args.include? key
    end.each do |after_sliced|
      new_hash = Hash[*after_sliced.flatten]
      result << new_hash
    end
    result
  end
end