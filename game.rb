require './questions'
require './players'

class Game
  attr_reader :playerOne, :playerTwo

  def initialize (playerOne, playerTwo)
    @playerOne = playerOne
    @playerTwo = playerTwo
  end

  def start_game

  while playerOne.health > 0 && playerTwo.health > 0
    question = Questions.new
    puts "Player 1: #{question.question}"
  if gets.chomp.to_i == question.answer
    puts 'YES! Correct.'
    puts "P1: #{playerOne.health}/3 vs P2: #{playerTwo.health}/3"
  else
    puts 'Wrong!'
    playerOne.health -= 1
    puts "P1: #{playerOne.health}/3 vs P2: #{playerTwo.health}/3"
  end

  puts '-----> 🏆 NEW TURN 🏆 <-----'
  question = Questions.new
  puts "Player 2: #{question.question}"
  if gets.chomp.to_i == question.answer
    puts 'YES! Correct.'
    puts "P1: #{playerOne.health}/3 vs P2: #{playerTwo.health}/3"
  else
    puts 'Wrong!'
    playerTwo.health -= 1
    puts "P1: #{playerOne.health}/3 vs P2: #{playerTwo.health}/3"
  end
    puts '-----> 🏆 NEW TURN 🏆 <-----'
  end

  if playerOne.health > playerTwo.health 
    puts "Player 1 wins with a score of #{playerOne.health} 1F396	🎖🎖🎖"
  elsif playerOne.health == playerTwo.health
    puts "Player 1 & Player 2 TIED!!!!"
  else  
    puts "Player 2 wins > score #{playerTwo.health} 🎖🎖🎖"
  end
    puts '-----> 🏆 GAME OVER 🏆 -----'
    puts '🤓 Good bye! 🤓'
  end

end