module MasterMind
  class Board
  	def number_to_colors(number)
  	  case number
  	  when 1 then "blue"
  	  when 2 then "purple"
  	  when 3 then "orange"
  	  when 4 then "green"
  	  when 5 then "yellow"
  	  else        "pink"
  	  end
  	end
  end
end