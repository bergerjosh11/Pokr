class Poker
	attr_reader :dealer
	def initialize (number_of_players = 5)
		@number_of_players = number_of_players
		
		deck = Deck.new
		@dealer = Dealer.new(deck)
	end

	def play
		dealer.shuffle
		dealer.deal players
		players.each do |player|
			puts player.show_hand
		end
		end
	end

	def players
		@players ||= number_of_players.times.map do |number|
			Player.new(number)
	end
end