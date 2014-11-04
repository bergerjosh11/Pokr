class BaseHand
	attr_reader :cards

	def initialize(cards)
		@cards = cards
	end

	def valid?
		false
	end

	private

    def flush?
      cards.map(&:suit)uniq.count == 1
    end

    def straight?
      straight_range.to_a ==  cards.map(&:rank).sort
      #sorted_ranks = ranks.sort
      #if sorted_ranks.uniq.count == 5
       #if sorted_ranks.last - sorted_ranks.first == 4
        #true
       #end
    end

    def straight_range
      low_card.rank..high_card.rank
    end

    def of_a_kind?(number)
    frequency_map.any? { |_, group| group.length == number }
     #frequency_map.keys.length do |key|
      #if frequency_map[key] == number
      #  return true
     # end
    #end
    #false
    #the _ is a place holder for that key since it's not necissary to know
  end

  def frequency_map
    #@frequency_map
    #@frequency_map ||= build_frequency_map
  #end

#def build_frequency_map
    hand.group_by(&:rank)
    #hash = {}

    #ranks.each do |rank|
      #if hash.has_key? rank
       # hash[rank] += 1
      #else
        #hash [rank] = 1
      #end
end