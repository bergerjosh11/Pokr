class Dealer
	attr_reader :deck
	def initialize(deck)
		@deck = deck
	end

	def deal(player)
		5.times do 
			players.each do|player|
				player.hand <<deal_card
			end
			
		end
		deck.pop
	end


  def shuffle
    deck.shuffle!
  end
private
	def deal_card
		deck.pop
	end

end