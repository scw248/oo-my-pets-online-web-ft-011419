require "pry"
class Owner
  
  attr_accessor :name
  attr_reader :species
  
  @@all = []
  @@count = 0
  
  def initialize(species)
    @species = species
    @@all << self
    @@count += 1
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@count
  end
  
  def self.reset_all
    @@all.clear
    @@count = 0
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  def pets
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
    self.pets[:fishes]
    #binding.pry
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
    self.pets[:cats]
    #binding.pry
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
    self.pets[:dogs]
    binding.pry
  end
  
  def walk_dogs
    self.pets[:dogs].each { |dog| dog.mood == "happy"}
  end
  
  def play_with_cats
    self.pets[:cats].each { |cat| cat.mood == "happy"}
  end
  
  def feed_fish
    self.pets[:fishes].each { |fish| fish.mood == "happy"}
  end
end