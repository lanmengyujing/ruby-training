class Fixnum

  def palindrome_below number
    result =[]
    (1...self).to_a.each() do |num|
      if (is_palindrome(num.to_s(number)))
        result << num
      end
    end
    result
  end

  def is_palindrome(binary)
    binary.reverse == binary
  end

end

class Palindromes

end