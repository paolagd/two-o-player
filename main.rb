# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './game'
require './player'
  
def start

  p1 = Player.new
  p2 = Player.new 
 
  game = Game.new(p1, p2)
 
  while true
    question = Game.new_question
    puts question[0]
    puts question[1]
    puts question[2]
    puts "Player 1: Whats does #{question[0]} plus #{question[1]} equal?"
    res = gets.chomp 
   
  end
   
end

start