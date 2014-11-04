class StraightFlush < BaseHand
def valid?
   flush? && straight?
end

def to_s
	"Straight Flush"
end
end