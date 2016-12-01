class Game

attr_reader :grid

GRID_HASH = { 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8=> '8', 9 => '9' }

  def initialize
    @grid = GRID_HASH
  end

  def my_move(selected_square)
    if applicable_move(selected_square) == true
     @grid[selected_square] = 'X' # Swaps the squares reference number for the X or 0 passed in
    end
    check_for_win
  end

private

  def applicable_move(selected_square)
    if @grid[selected_square] != 'X'
      return true
    else
      raise "This square has already been selected in this game"
    end
  end

  def check_for_win
    check_horizontal
    check_vertical
    check_diagonal
  end

  def check_horizontal
    if
      @grid[1] && @grid[2] && @grid[3] == 'X'
      raise "Player 1 wins"
    end
  end

  def check_vertical
  end

  def check_diagonal
  end

end
