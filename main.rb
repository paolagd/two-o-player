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

    puts "\nPlayer #{game.current_player.number}: What does #{num1} plus #{num2} equal? #{result}" 
    print "> " 
    response = gets.chomp.to_i

    if(response == result)
      puts "Player #{game.current_player.number}: Way to go!"
    end

    if (response != result)
      puts "Player #{game.current_player.number}: Seriously? No!"
      game.current_player.decrease_lives
      game.check_winner 
    end

    game.switch_player   
    puts game.score

    if (game.winner == nil)
      puts "----- NEW TURN -----"
    end
  end


  puts "Player #{game.winner.number} wins with a score of #{game.winner.lives}/3 "
  puts "----- GAME OVER -----"
  puts "Good bye!"
     
end

start