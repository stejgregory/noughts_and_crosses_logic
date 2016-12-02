require_relative 'player'

class Game

attr_reader :grid, :winner, :current_player

GRID_HASH = { 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8=> '8', 9 => '9' }

  def initialize
    @grid = GRID_HASH
    @winner = nil
    @player1 = Player.new('O')
    @player2 = Player.new('X')
    @current_player = @player1
  end

  def current_player_move(selected_square)
    if applicable_move(selected_square) == true
     @grid[selected_square] = @current_player.symbol  # Inserts current player's symbol into the selected square of the grid
    end
    check_for_win
    switch_player_turn
  end

  def reset_game
    @grid = { 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8=> '8', 9 => '9' }
    @winner = nil
  end

private

  def applicable_move(selected_square)
    if @grid[selected_square] != 'O' && @grid[selected_square] != 'X' # Does this space on the grid already contain an O or an X
      return true                                                     # If not, return true
    else
      raise 'Square Taken'                                            # If so, raise error
    end
  end

  def switch_player_turn
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def check_for_win   # Checks each direction for three-in-a-row of the current player's symbol
    check_horizontal
    check_vertical
    check_diagonal
  end

  def check_horizontal
    if @grid[1] && @grid[2] && @grid[3] == @current_player.symbol || @grid[4] && @grid[5] && @grid[6] == @current_player.symbol || @grid[7] && @grid[8] && @grid[9] == @current_player.symbol
      @winner = @current_player
    end
  end

  def check_vertical
    if @grid[1] && @grid[4] && @grid[7] == @current_player.symbol || @grid[2] && @grid[5] && @grid[8] == @current_player.symbol || @grid[3] && @grid[6] && @grid[9] == @current_player.symbol
      @winner = @current_player
    end
  end

  def check_diagonal
    if @grid[1] && @grid[5] && @grid[9] == @current_player.symbol || @grid[3] && @grid[5] && @grid[7] == @current_player.symbol
      @winner = @current_player
    end
  end

end
