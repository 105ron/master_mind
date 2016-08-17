# /example/example_game.rb
root = File.expand_path("../", File.dirname(__FILE__))
require "#{root}/lib/master_mind.rb"
 
puts "Welcome to Master Mind"

MasterMind::Game.new.play
