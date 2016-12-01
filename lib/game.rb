class Game

attr_reader :grid, :winner

GRID_HASH = { 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8=> '8', 9 => '9' }

  def initialize
    @grid = GRID_HASH
    @winner = nil
  end

  def my_move(selected_square)
    if applicable_move(selected_square) == true
     @grid[selected_square] = 'X' # Swaps the squares reference number for the X or 0 passed in
    end
    check_for_win
  end

  def reset_game
    @grid = { 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8=> '8', 9 => '9' }
  end

private

  def applicable_move(selected_square)
    if @grid[selected_square] != 'X'
      return true
    else
      raise "Square Taken"
    end
  end

  def check_for_win
    check_horizontal
    check_vertical
    check_diagonal
  end

  def check_horizontal
    if
      @grid[1] && @grid[2] && @grid[3] == 'X' || @grid[4] && @grid[5] && @grid[6] == "X" || @grid[7] && @grid[8] && @grid[9] == "X"
      @winner = "Player1"
    end
  end

  def check_vertical
    if
      @grid[1] && @grid[4] && @grid[7] == 'X' || @grid[2] && @grid[5] && @grid[8] == "X" || @grid[3] && @grid[6] && @grid[9] == "X"
      @winner = "Player1"
    end
  end

  def check_diagonal
    if
      @grid[1] && @grid[5] && @grid[9] == 'X' || @grid[3] && @grid[5] && @grid[7] == "X"
      @winner = "Player1"
    end
  end

end
