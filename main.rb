require './game'
require './players'
require './questions'

playerOne = Players.new
playerTwo = Players.new

game = Game.new(playerOne, playerTwo)
game.start_game