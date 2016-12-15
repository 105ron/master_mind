# MasterMind

MasterMind is an adaption of a board game. In the Ruby version, the user can choose to guess and make the computer the codemaker and randomly generate a code. Duplicates are allowed, so the computer could even choose four code pegs of the same color.

The user tries to guess the pattern, in both order and color, within eight turns. Each guess is made by typing the colors in the CLI. Once entered, the computer provides feedback by printing to the screen if the number of guesses that are right but in the wrong spot and how many is correct in both color and position. See [Wikipedia](https://en.wikipedia.org/wiki/Mastermind_(board_game)) for more information and game rules.

The user can also set the code and allow the computer to try and guess the solution. The computer will randomly guess the code.

To run the game, run `ruby example/example_game.rb`

This is a project for [TheOdinProject's](http://www.theodinproject.com) Ruby track. See [here](http://www.theodinproject.com/courses/ruby-programming/lessons/oop?ref=lc-pb) for more information.

