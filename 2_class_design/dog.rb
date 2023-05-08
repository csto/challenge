require_relative 'animal'
require_relative 'food'

class Dog < Animal
  DEFAULT_FAVORITE_FOOD = [DogFood, CatFood, Chicken, HumanFood].freeze

  def noise
    "bark"
  end
end
