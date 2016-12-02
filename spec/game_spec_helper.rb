def horizontal_winning_turns
  game.current_player_move(1) # Player1
  game.current_player_move(4) # Player2
  game.current_player_move(2) # Player1
  game.current_player_move(7) # Player2
  game.current_player_move(3) # Player1
end

def vertical_winning_turns
  game.current_player_move(3) # Player1
  game.current_player_move(4) # Player2
  game.current_player_move(6) # Player1
  game.current_player_move(7) # Player2
  game.current_player_move(9) # Player1
end

def diagonal_winning_turns
  game.current_player_move(3) # Player1
  game.current_player_move(4) # Player2
  game.current_player_move(5) # Player1
  game.current_player_move(1) # Player2
  game.current_player_move(7) # Player1
end

def fill_the_board_without_player_winning
  game.current_player_move(1) # Player1
  game.current_player_move(3) # Player2
  game.current_player_move(2) # Player1
  game.current_player_move(4) # Player2
  game.current_player_move(6) # Player1
  game.current_player_move(5) # Player2
  game.current_player_move(7) # Player1
  game.current_player_move(8) # Player2
  game.current_player_move(9) # Player1
end
