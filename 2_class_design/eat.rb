require_relative 'cat'
require_relative 'dog'
require_relative 'food'

fluffy = Cat.new(name: 'Fluffy')
spot = Dog.new(name: 'Spot')
rover = Dog.new(name: 'Rover', favorite_food: HumanFood)

fluffy.eat(CatFood)  # should meow 3 times
fluffy.eat(DogFood)  # should meow once
spot.eat(CatFood)    # should bark 3 times
spot.eat(Chicken)    # should bark 3 times
spot.eat(HumanFood)  # should bark 3 times
spot.eat(Lemons)     # should bark once
rover.eat(DogFood)   # should bark once
rover.eat(HumanFood) # should bark 3 times
