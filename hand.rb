class Hand
  def royal_flush?
    return @cards if straight_flush? and @cards.map(&:value).max == Poker::values.max
  end

  def straight_flush?
    return @cards if straight? and @cards.map(&:type).uniq.size == 1
  end

  def four_of_a_kind?
    x_of_a_kind?(4)
  end

  def full_house?
    return @hand if three_of_a_kind? and Hand.new(@cards - three_of_a_kind?).one_pair?
    return nil
  end

  def flush?
    return @cards if @cards.map(&:type).uniq.size == 1
  end

  def straight?
    return @cards if (vs = @cards.map(&:value).sort) == (vs.min..vs.max).to_a
  end

  def three_of_a_kind?
    x_of_a_kind?(3)
  end

  def two_pairs?
    if (first_pair = one_pair?) and (second = Hand.new(@cards - one_pair?).one_pair?)
      return first_pair + second
    else
      return false
    end
  end

  def one_pair?
    x_of_a_kind?(2)
  end

  def high_card?
    @cards.sort_by{|c| c.value}.last
  end
end

  private
  
  def x_of_a_kind?(x)
    Poker::values.each do |v|
      if (ary = @cards.select{|c| c.value == v}).size == x
        return ary
      end
    end
    return false
  end
end