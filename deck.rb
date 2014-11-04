class Decks
  def ranks 
       ranks = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
  end

  def suits
    suits = ["Spades", "Hearts", "Diamonds", "Clubs"]
  end

  def initialize
    @cards = generate
    shuffle
  end

  def shuffle
    cards.shuffle!
  end

  def pop
    cards.pop
  end


  def display
      cards.each do |card|
      puts card.to_s
  end

  private

  private_constant :SUITS, :RANKS
 attr_reader :cards
 
  def generate
	Suits.flat_map do |suit|
		Ranks.map do |rank|
			Card.new(suit, rank)
	  end
	end
  end

  def cards
    @cards ||= generate
end
   
end
