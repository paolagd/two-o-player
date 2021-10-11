class Player
  attr_accessor :lives

  def initialize
    @lives = 3
  end
 
  def decrease_lives  
    self.lives -= 1
  end 
end