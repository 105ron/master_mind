module MasterMind

  class Board

    attr_accessor :code
    

    def initialize
      @code = ([rand(1..6),rand(1..6),rand(1..6),rand(1..6)])
    end


  	def check_matches(guess)
  	  matches = 0
  	  guess.each_with_index do |number, index|
  	  	if number == @code[index]
  	  	  matches += 1
  	  	end 
  	  end
  	  matches
  	end


  	def check_unordered_matches(guess)
      random_code = @code.dup #suplicate so we don't modify @code in this method
      exact_matches = check_matches(guess)
  	  matches = 0
  	  guess.each do |number|
  	  	if random_code.include?(number)
  	  	  random_code.delete_at(random_code.index(number)) #Delete's the match we just made
  	  	  matches += 1
  	  	end
  	  end
  	  matches = matches - exact_matches
  	end


  end

end
