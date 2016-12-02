require 'spec_helper'
require 'game_spec_helper'

describe Game do
  subject(:game) { described_class.new }
  let(:grid) { described_class::GRID_HASH }

  describe "#initialize" do
    it "starts the game with a blank board" do
      expect(game.grid).to eq grid
    end
  end

  describe "#current_player_move" do
    it "allows player to select a square in the grid" do
      game.current_player_move(7)
      expect(game.grid[7]).to eq('O')
    end

    it "doesn't allow a player to select a square already filled in" do
      game.current_player_move(4)
      expect{ game.current_player_move(4) }.to raise_error 'Square Taken'
    end
  end

  describe "#check_for_win" do
    it "test a horizontal win" do
      game.reset_game
      horizontal_winning_turns
      expect(game.winner).to be_truthy
    end

    it "test a vertical win" do
      game.reset_game
      vertical_winning_turns
      expect(game.winner).to be_truthy
    end

    it "test a diagonal win" do
      game.reset_game
      diagonal_winning_turns
      expect(game.winner).to be_truthy
    end
  end

  describe "drawing a game" do
    it "identifies a draw" do
      game.reset_game
      fill_the_board_without_player_winning
      expect(game.draw).to be true
    end

    it "doesn't identify a draw until there is one" do
      game.reset_game
      game.current_player_move(3) # Player1
      game.current_player_move(4) # Player2
      game.current_player_move(6) # Player1
      expect(game.draw).to be false
    end
  end

  describe "#reset_game" do
    it "should reset the 'winner' variable" do
      game.reset_game
      diagonal_winning_turns
      game.reset_game
      expect(game.winner).to be_nil
    end
  end

end
