Dir.glob("hands/*").each do |hand|
	require "./#{hand}"

class HandEvaluator
Possible_Hands = [
StraightFlush,
FourOfAKind,
FullHouse,
Flush,
Straight,
ThreeOfAKind,
TwoPair,
OnePair,
HighCard,
]

  def initialize(cards)
    @cards = cards
  end

  def evaluate
  	highest_hand = hands.find { |hand| hand.valid? }
  	highest_hand.to_s
  	#ranks = []
  	#suits = []
  	#hand.each do |card|
  	#	ranks << card.rank
  	#	suits << card.suit
    end

    if StraightFlush.new(cards).valid
    	"Straight Flush"
    elsif FourOfAKind.new(cards).valid
    	"Four of a Kind"
    elsif FullHouse.new(cards).valid
    	"Full House"
    elsif Flush.new(cards).valid
    	"Flush"
    elsif Straight.new(cards).valid
    	"straight"
    elsif ThreeOfAKind.new(cards).valid
		"Three of a Kind"
	elsif TwoPair.new(cards).valid
		"Two Pair"
	elsif OnePair.new(cards).valid
		"One Pair"
	elsif HighCard.new(cards).valid
		"High Card"	    		    
    end
  end

  private

  def hands
  	Possible_Hands.map { |hand_class| hand_class.new(cards) }
  end
end