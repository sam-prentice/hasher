require_relative '../lib/hasher/hashmap'
require_relative '../lib/hasher/animal'

hashmap = Hasher::Hashmap.new

lemur = Hasher::Animal.new("Lemur", 4, ["insects", "fruit"])
hashmap.add(lemur.name, lemur)
goat = Hasher::Animal.new("Goat", 4, ["grass"])
hashmap.add(goat.name, goat)
snake = Hasher::Animal.new("Snake", 0, ["insects", "eggs"])
hashmap.add(snake.name, snake)
deer = Hasher::Animal.new("Deer", 4, ["grass"])
hashmap.add(deer.name, deer)
armadillo = Hasher::Animal.new("Armadillo", 4, ["insects", "scorpions"])
hashmap.add(armadillo.name, armadillo)
steer = Hasher::Animal.new("Steer", 4, ["corn", "oats"])
hashmap.add(steer.name, steer)
tiger = Hasher::Animal.new("Tiger", 4, ["meat"])
hashmap.add(tiger.name, tiger)
guanaco = Hasher::Animal.new("Guanaco", 4, ["grass"])
hashmap.add(guanaco.name, guanaco)
otter = Hasher::Animal.new("Otter", 4, ["fish"])
hashmap.add(otter.name, otter)
mole = Hasher::Animal.new("Mole", 4, ["worms"])

hashmap.print_all
