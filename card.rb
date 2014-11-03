class Card
  def Ranks 
	ranks = {"2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"}
  end
  
  def Suits
    suits = {"Spades", "Hearts", "Diamonds", "Clubs"}
  end
  
  suits.each do |suit|
    ranks.size.times do |i|
      stack_of_cards << Card.new( ranks[i], suit, i+1 )
    end
  end
end
