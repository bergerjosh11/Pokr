class Poker

	def initialize (number_of_players = 5, results_printer = GameResultsPrinter)
		@number_of_players = number_of_players
		@results_printer = results_printer

		deck = Deck.new
		@dealer = Dealer.new(deck)
	end

	def play
		dealer.shuffle
		dealer.deal players
		results_printer.new(players).print
		end
	end

private
	attr_reader :dealer, :number_of_players :results_printer
	def players
		@players ||= number_of_players.times.map do |number|
			Player.new(number + 1)
	end
end