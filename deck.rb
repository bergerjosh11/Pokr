class Deck
  attr_reader :card

  def initialize(cards)
    @card = cards
  end

  def shuffle
    card.shuffle!
  end

  def deal
    card.pop(5)
  end
end