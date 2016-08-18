module MasterMind
  class Game
  	
    def play
      game_matched = false
      board = Board.new
      x = 0
      puts board.cheat
      until game_matched || x > 7
        guess = solicit_move
        if board.check_matches(guess) == 4
          game_matched = true
          game_won  
        else
          puts "You've got #{board.check_matches(guess)} matches and #{board.check_unordered_matches(guess)} right but in the wrong spot."
          x +=1
        end
      end
      game_lost(board.cheat) if x > 7 && game_matched == false
    end


    def solicit_move
  	  puts "Enter 4 colors, separated by a comma: (blue,purple,orange,green,yellow,pink)"
      colors = gets.chomp.split(",") #.map(&:to_i) #turns string into array of integers
      colors.map {|selection| color_to_numbers(selection)}
    end


    def game_won
      puts "You Win! Would you like to play again? (y/n)"
      play_again = gets.chomp
      play if play_again == "y"
    end


    def game_lost(code)
      puts "The correct combination was #{number_to_colors(code[0])},#{number_to_colors(code[1])},#{number_to_colors(code[2])},#{number_to_colors(code[3])}"
      puts "Would you like to try again? (y/n)"
      play_again = gets.chomp
      play if play_again == "y"
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
      case color
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


