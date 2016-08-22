module MasterMind
  class Game
  	attr_accessor :computer_guesses


    def which_side
      puts "Would you like to set or guess the code? (set/guess)"
      game_choice = gets.chomp.downcase
      if game_choice == "guess"
        play
      else
        ai_play
      end
    end


    def ai_play
      game_matched = false
      board = Board.new
      board.code = get_user_code 
      attempts = 0
      until game_matched || attempts > 7
        guess = AI.new.guess
        puts display_code(guess)
        puts "Computer has #{board.check_matches(guess)} matches and #{board.check_unordered_matches(guess)} right but in the wrong spot."
        if board.check_matches(guess) == 4
          game_matched = true
          computer_guess = true
          game_lost(board.code)
        else
          attempts +=1
        end
      end
      game_won if attempts > 7 && game_matched == false
    end


    def play
      game_matched = false
      board = Board.new
      attempts = 0
      until game_matched || attempts > 7
        guess = get_user_code
        if board.check_matches(guess) == 4
          game_matched = true
          game_won  
        else
          puts "You've got #{board.check_matches(guess)} matches and #{board.check_unordered_matches(guess)} right but in the wrong spot."
          attempts +=1
        end
      end
      computer_guesses = false
      game_lost(board.code) if attempts > 7 && game_matched == false
    end


    def get_user_code
  	    puts "Enter 4 colors, separated by a comma: (blue,purple,orange,green,yellow,pink)"
        colors = gets.downcase.chomp.split(",") #.map(&:to_i) #turns string into array of integers
        colors.map {|selection| color_to_numbers(selection)}
    end


    def game_won
      puts "You Win! Would you like to play again? (y/n)"
      play_again = gets.chomp
      which_side if play_again == "y"
    end


    def game_lost(code)
      puts "The correct combination was " + display_code(code) if computer_guesses
      puts "Your Lose! Would you like to try again? (y/n)"
      play_again = gets.downcase.chomp
      which_side if play_again == "y"
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


    def display_code(code)
      "#{number_to_colors(code[0])},#{number_to_colors(code[1])},#{number_to_colors(code[2])},#{number_to_colors(code[3])}"
    end
  end

end


