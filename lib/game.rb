class Game

  def self.run(number)

    if (number%3 == 0 && number%5==0)
      return 'FuzzBuzz'
    elsif number%3==0
      return 'Fuzz'
    elsif number%5==0
      return 'Buzz'
    end
  end

end
