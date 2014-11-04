class FullHouse < Basehand
def valid?
of_a_kind(3) && of_a_kind(2)
end
def to_s
	"Full House"
end
end