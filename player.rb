class Player
  attr_reader :card, :hand

  def initialize(cards)
    @card = cards
  end

  def initialize(hands)
  	@hand = hands
  end

  require hand
end