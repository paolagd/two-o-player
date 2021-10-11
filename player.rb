class Player
  attr_reader :lives, :number

  def initialize (n)
    @number = n
    @lives = 3
  end
 
  def decrease_lives  
    @lives -= 1
  end 
end