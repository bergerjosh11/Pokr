class FourOfAKind < BaseHand
	def valid?
		of_a_kind?(4)
	end
	def to_s
	"Four of a Kind"
end
end