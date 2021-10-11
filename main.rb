# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './game'
require './player'
  
def start

  p1 = Player.new(1)
  p2 = Player.new(2)
 
  #Instantiates new game with new players created above
  game = Game.new(p1, p2)
  
  # Starts game until there is a winner
  while game.winner == nil
  
    #Requests a new question
    question = Game.new_question
    num1, num2, result = question 
    current_player = game.current_player.number

    puts "\nPlayer #{current_player}: What does #{num1} plus #{num2} equal? #{result}" 
    print "> " 
    response = gets.chomp.to_i

    if(response == result)
      puts "Player #{current_player}: Way to go!"
    end

    if (response != result)
      puts "Player #{current_player}: Seriously? No!"
      game.current_player.decrease_lives
      #check the latest score to verify if there is a winner
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