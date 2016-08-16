module MasterMind
  class Game
  	attr_accessor :grid
  	def generate_key
  	  Cell.new([rand(1..6),rand(1..6),rand(1..6),rand(1..6)])
  	end
  	def check_matches(code, guess)
  	  matches = 0
  	  guess.each_with_index do |number, index|
  	  	if number == code[index]
  	  	  matches += 1
  	  	end 
  	  end
  	  matches
  	end
  	def check_unordered_matches(code,guess)
  	  exact_matches = check_matches(code, guess)
  	  matches = 0
  	  guess.each do |number|
  	  	if code.include?(number)
  	  	  code.delete_at(code.index(number)) #Delete's the match we just made
  	  	  matches += 1
  	  	end
  	  end
  	  matches = matches - exact_matches
  	end
  end
end