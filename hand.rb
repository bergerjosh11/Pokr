class Hand
  attr_reader :card, :deck
  
  def straight_flush?
   flush? && straight?
  end

  def four_of_a_kind?
    frequency_map.keys.length do |key|
      if frequency_map[key] == 4
        return true
      end
    end
    false
  end

  def full_house?
    frequency_map.keys.length == 2
  end

  def flush?
    suits.uniq.count == 1
  end

  def straight?
    sorted_ranks = ranks.sort
    if sorted_ranks.uniq.count == 5
     if sorted_ranks.last - sorted_ranks.first == 4
      true
     end

  end

  def three_of_a_kind?
       frequency_map.keys.length do |key|
      if frequency_map[key] == 3
        return true
      end
    end
    false
  end

  def two_pairs?
   frequency_map.keys.length == 3
  end

  def one_pair?
     frequency_map.keys.length == 4
  end

  def high_card?
    sorted_hand = hand.sort_by { |card| card.rank }.reverse
    "High Card: #{sorted_hand[0].to_s}"
  end
end

  private
  
  def frequency_map
    @frequency_map
    @frequency_map ||= build_frequency_map
  end

def build_frequency_map
     hash = {}

    ranks.each do |rank|
      if hash.has_key? rank
        hash[rank] += 1
      else
        hash [rank] = 1
      end
end