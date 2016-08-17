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
    context "#check_matches" do  
      it "It returns the correct amount of matches" do
    	  board = Board.new
        board.instance_variable_set(:@code, [2,4,2,3])
    	  expect(board.check_matches([2,4,5,3])).to eq 3
      end
      it "It ignores a match of elements in the wrong order" do
        board = Board.new
        board.instance_variable_set(:@code, [1,2,7,6])
        expect(board.check_matches([7,6,2,1])).to eq 0
      end
      it "It correctly handles repeated code characters" do
        board = Board.new
        board.instance_variable_set(:@code, [1,1,1,4])
        expect(board.check_matches([1,1,1,3])).to eq 3
      end
      it "It doesn't match repeated elements out of order" do
        board = Board.new
        board.instance_variable_set(:@code, [0,1,2,1])
        expect(board.check_matches([1,1,1,1])).to eq 2
      end
      it "It correctly matches 4 of the same number" do
        board = Board.new
        board.instance_variable_set(:@code, [1,1,1,1])
        expect(board.check_matches([1,1,1,1])).to eq 4
      end
    end
    context "#check_unordered_matches" do
      it "It returns matches even if they are out of order" do
        board = Board.new
        board.instance_variable_set(:@code, [5,4,2,3])
        expect(board.check_unordered_matches([2,5,3,4])).to eq 4
      end
      it "If code has repeated numbers but our guess doesn't, the repeats are ignored" do
        board = Board.new
        board.instance_variable_set(:@code, [2,1,7,9])
        expect(board.check_unordered_matches([1,6,1,1])).to eq 1
      end
      it "If guess has repeated numbers but our code doesn't, the repeats are ignored" do
        board = Board.new
        board.instance_variable_set(:@code, [1,1,1,4])
        expect(board.check_unordered_matches([3,7,2,1])).to eq 1
      end
      it "It doesn't count matches in the correct position" do
        board = Board.new
        board.instance_variable_set(:@code, [1,1,1,4])
        expect(board.check_unordered_matches([1,1,3,1])).to eq 1
      end
    end
end
