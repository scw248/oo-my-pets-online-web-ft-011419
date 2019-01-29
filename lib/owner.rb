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
    @pets[:fishes] << fish
    #binding.pry
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
    #binding.pry
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
    #binding.pry
  end
end