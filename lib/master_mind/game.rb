Module MasterMind
  class Game
  	attr_accessor :grid
  	def generate_key
  	  Cell.new([rand(1..6),rand(1..6),rand(1..6),rand(1..6)])
  	end
  end
end