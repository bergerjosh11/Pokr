class Card
  attr_reader :suit, :rank
  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

  def to_s
  "#{rank}#{suit}"
end 

  DISPLAY_VALYES = {
    11 => "J",
    12 => "Q",
    13 => "K",
    14 => "A",
  }
end


def display_rank
  if DISPLAY_VALUES.has_key?
    DISPLAY_VALUES[rank]
  else 
    rank
  end

end
