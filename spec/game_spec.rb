require 'spec_helper'

describe Game do
  subject(:game) { described_class.new }
  let(:grid) { described_class::GRID_HASH }

  describe "#initialize" do
    it "starts the game with a blank board" do
      expect(game.grid).to eq grid
    end
  end

  describe "#my_move" do
    it "allows player to select a square in the grid" do
      game.my_move(7)
      expect(game.grid[7]).to eq('X')
    end

    it "doesn't allow a player to select a square already filled in" do
      game.my_move(4)
      expect{ game.my_move(4) }.to raise_error "Square Taken"
    end
  end

  describe "#check_for_win" do
    it "test a horizontal win" do
      game.reset_game
      game.my_move(1)
      game.my_move(2)
      game.my_move(3)
      expect(game.winner).to eq "Player1"
    end

    it "test a vertical win" do
      game.reset_game
      game.my_move(3)
      game.my_move(6)
      game.my_move(9)
      expect(game.winner).to eq "Player1"
    end

    it "test a diagonal win" do
      game.reset_game
      game.my_move(3)
      game.my_move(5)
      game.my_move(7)
      expect(game.winner).to eq "Player1"
    end
  end

end
