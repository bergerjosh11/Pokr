class Player

  attr_accessor :hand
  require hand


  def initialize(number)
    @number = number
    @hand = []
  end

  def initialize(hands)
  	@hand = hands
  end

def name
	"Player #{number}"
end
def show_hand
	hand.each do |card|
		puts card.to_s
end

def hand
	@hand ||=[]
end
private
  attr_reader :number
end