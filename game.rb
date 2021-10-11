class Game
  
  attr_reader :winner, :current_player

  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2 
    @current_player = p1
    @winner = nil
  end

  def switch_player 
    @current_player = @current_player == @p1 ? @p2 : @p1
  end

  def score
    "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"
  end

  def check_winner
    if(@current_player.lives == 0 && @current_player == @p1)
      @winner = @p2
    elsif (@current_player.lives == 0 && @current_player == @p2)
      @winner = @p1
    end
  end

  def self.new_question 
    num1 = rand(1..10)
    num2 = rand(1..10)
    res = num1 + num2
    question = [num1, num2, res]
  end

end