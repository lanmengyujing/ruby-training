


class Blackjack
  def score_hand(array)
    result = 0
    common_number =array.reject do |x|
      /a/.match(x.downcase)
    end
    if common_number.size > 0
      result += common_sum(common_number)
    end

    special_cards =array.select do |x|
      /a/.match(x.downcase)
    end
    if special_cards.size >0
      result = add_special_card(result, special_cards)
    end
    result
  end

  def common_sum(common_number)
    result = 0
    common_number.each do |text|
      if /[jqk]/.match(text.downcase)
        result += 10
      end
      if text.to_i <=10
        result +=text.to_i
      end
    end
    result
  end

  def add_special_card(result, special_cards)
    if (special_cards.size>1)
      result = special_card_bigger_than_two(result, special_cards)
    else
      result = only_one_special_card(result)
    end
    result
  end

  def special_card_bigger_than_two(result, special_cards)
    if (result + special_cards.size-1 +11) < 21
      result+= special_cards.size-1 +11
    else
      result+= special_cards.size
    end
    result
  end

  def only_one_special_card(result)
    ((result +11) <= 21) ? result +=11 : result +=1
    result
  end
end

