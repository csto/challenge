require_relative 'animal'
require_relative 'food'

class Cat < Animal
  DEFAULT_FAVORITE_FOOD = [CatFood, Chicken, Milk].freeze

  def noise
    "meow"
  end
end
