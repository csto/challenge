class Animal
  def initialize(name:, favorite_food: nil)
    @name = name
    @favorite_food = favorite_food ? Array(favorite_food) : self.class::DEFAULT_FAVORITE_FOOD
  end

  def eat(food)
    if @favorite_food.include?(food)
      puts "#{noise} #{noise} #{noise}"
    else
      puts noise
    end
  end

  def noise
    raise NotImplementedError, "Implement this in a subclass"
  end
end
