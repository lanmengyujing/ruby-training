class Blackjack

  def score_hand(array)
    result = 0
    card_num = card_map
    array.each do |each_card|
      if card_num.has_key? each_card
        result += card_num[each_card].to_i
      elsif each_card.match(/^\d$/)
        result += each_card.to_i
      end
    end
    (array.include?('A') && result <= 11) ? result + 10 : result
  end

  private
  def card_map
    {'A' => 1, 'J' => 10, 'Q' => 10, 'K' => 10}
  end
end

