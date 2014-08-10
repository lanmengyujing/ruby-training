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
      result =  self.shift
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


  def inject1(arg=shift)
    if arg.is_a? Symbol
      a = self.shift
      each {|e| a = a.send(arg, e) }
    else
      a = arg
      each {|e| a = yield a, e }
    end
    a
  end
end

p [1,2,3].inject1(:+)

class CustomArray
  def self.split_array array, parts
    size = array.length/parts
    divide_length = array.length % parts ? size+1 : size
    array.each_slice(divide_length).to_a
  end
end