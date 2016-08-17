module MasterMind

  class Board

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


  	def number_to_colors(number)
  	  case number
  	  when 1 then "blue"
  	  when 2 then "purple"
  	  when 3 then "orange"
  	  when 4 then "green"
  	  when 5 then "yellow"
  	  else "pink"
  	  end
  	end


  	def color_to_numbers(color)
  	  case number
  	  when "blue" then 1
  	  when "purple" then 2
  	  when "orange" then 3
  	  when "green" then 4
  	  when "yellow" then 5
  	  else 6
  	  end
  	end

  end

end
