module MasterMind
  class Game
  	
    def play
      board = Board.new
      puts board.cheat
      x = 0
      while x < 6
        puts "Enter guess"
        guess = [x,x+1,x+2,x+3]
        puts "You've got #{board.check_matches(guess)} matches and #{board.check_unordered_matches(guess)} right but in the wrong spot"
        x +=1
      end
    end

    def solicit_move
  	
    end
  end
end


