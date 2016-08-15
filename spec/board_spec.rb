require "spec_helper"
 
module MasterMind
  describe Board do
 
    #context "#number_to_colors" do
    #  it "Doesn't create errors initialising" do
    #    expect { Board.new }.to_not raise_error
    #  end
    #end
    it "converts integers to board colors" do
  	  board = Board.new
  	  expect(board.number_to_colors(2)).to eq "purple"
    end
  end
end
