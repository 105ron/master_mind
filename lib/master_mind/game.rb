module MasterMind
  class Game
  	attr_accessor :code
  	def generate_key
  	  @code = Cell.new([rand(1..6),rand(1..6),rand(1..6),rand(1..6)])
  	end
  	
  end
end