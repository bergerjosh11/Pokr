class Card
  
  def initialize(cards)
    @cards = cards
  end

  def ranks 
	  ranks = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
  end
  
  def suits
    suits = ["Spades", "Hearts", "Diamonds", "Clubs"]
  end


  suits.each do |suit|
  ranks.each_with_index do |rank,i|
  stack_of_cards << Card.new(ranks[i], suit, i+1)

  end
  end
end
