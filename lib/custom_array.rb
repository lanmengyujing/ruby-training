class Array
  def filter
    result =[]
    if block_given?
      self.each do |x|
        result<< x if yield x
      end
    end
    result
  end

  def inject_new sum =0
    if (sum)
      result = sum
    else
      result = self[0]
      self.delete_at(0)
    end

    if block_given?
      self.each do |x|
        result = yield result, x.to_i
      end
    end
    result
  end

  def group_by_new
    hash ={}
    if block_given?
      self.each do |x|
        key = yield x
        hash[key] =[] if !hash.has_key?(key)
        hash[key] <<x
      end
    end
    hash
  end

end

class CustomArray
  def self.split_array array, parts
    size = array.length/parts
    divide_length = array.length % parts ? size+1 : size
    array.each_slice(divide_length).to_a
  end
end