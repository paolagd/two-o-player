class Game
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @current_player = p1
  end

  def current_player
  end

  def self.new_question 
    num1 = rand(1..10)
    num2 = rand(1..10)
    res = num1 + num2
    question = [num1, num2, res]
  end

end