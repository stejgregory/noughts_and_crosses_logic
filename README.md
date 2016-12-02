# Noughts and Crosses Logic
Business logic for *tic tac toe*

## The brief

The rules of tic-tac-toe are as follows:

* There are two players in the game (X and O)
* Players take turns until the game is over
* A player can claim a field if it is not already taken
* A turn ends when a player claims a field
* A player wins if they claim all the fields in a row, column or diagonal
* A game is over if a player wins
* A game is over when all fields are taken

Build the business logic for a game of tic tac toe. It should be easy to implement a working game of tic tac toe by combining your code with any user interface, whether web or command line.

## How to test game logic in terminal
```
$ git clone https://github.com/stejgregory/noughts_and_crosses_logic.git
$ cd noughts_and_crosses_logic
$ bundle
$ rspec
$ irb
$ require './lib/game
$ game = Game.new

```

## To do
- [x] Draw up the game and work out the scale of the logic
- [x] Initialise bundle and rspec
- [x] Create game class and spec
- [x] Write tests and pass for placing X or 0 on grid
- [x] Write tests for winning a game
- [x] Define methods to check for a win
- [x] Create player class
- [x] Refactor tests for 2 players
- [ ] Test & Method for a draw

#### Extra
- [ ] Refactor more
- [ ] Create a basic terminal interface to play the game
- [ ] Show game board through terminal
