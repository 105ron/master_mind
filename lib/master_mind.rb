require_relative "master_mind/version"

module MasterMind
  # Your code goes here...
end

lib_path = File.expand_path(File.dirname(__FILE__))
Dir[lib_path + "/master_mind/**/*.rb"].each { |file| require file }

#require_relative "./master_mind/cell.rb"
#require_relative "./master_mind/game.rb"
#require_relative "./master_mind/board.rb"

