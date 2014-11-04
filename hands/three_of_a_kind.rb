class ThreeOfAKind < BaseHand
def valid?
of_a_kind?(3)
end

def to_s
	"Three of a Kind"
end
end