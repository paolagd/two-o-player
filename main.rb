# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './game'
require './player'
  
def start

  p1 = Player.new(1)
  p2 = Player.new(2)
 
  game = Game.new(p1, p2)
  
  # Starts game until there is a winner
  while game.winner == nil
 

    question = Game.new_question
    num1, num2, result = question 

    puts "\nPlayer #{game.current_player.number}: Whats does #{num1} plus #{num2} equal? #{result}" 
    print "> " 
    response = gets.chomp.to_i

    if(response == result)
      puts "Player #{game.current_player.number}: Way to go!"
    end

    if (response != result)
      puts "Player #{game.current_player.number}: Seriously? No!"
    end

    game.switch_player  
   
    puts game.score
    puts "----- NEW TURN -----"
  end
   
end

start