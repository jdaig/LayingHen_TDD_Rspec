class LayingHen
  def initialize
    @hen_age = 0
    @eggs = []
    @number_of_eggs = @eggs.length
  end

  # Ages the hen one month, and lays 4 eggs if the hen is older than 3 months
  def age!
    @hen_age += 1
    4.times do
      if @hen_age > 3
        @eggs << Egg.new
        @number_of_eggs += 1
      end
    end
  end

  def age
    @hen_age 
  end

  def any_eggs?
    @number_of_eggs > 0 ? true : false
  end
  
  def pick_an_egg!
    raise NoEggsError, "The hen has not layed any eggs" unless self.any_eggs?

    # egg-picking logic goes here
    if @eggs.length > 0
      egg = @eggs.pop
      @number_of_eggs -= 1
    end
    egg
  end

  def old?
    @hen_age > 10 ? true : false
  end

end

class Egg
  attr_accessor :hatched_egg

  # Initializes a new Egg with hatched hours +hatched_hours+
  def initialize
    @hatched_egg = 0
  end

  def rotten?
    @hatched_egg > 3 ? true : false
  end

end

class NoEggsError < StandardError; end