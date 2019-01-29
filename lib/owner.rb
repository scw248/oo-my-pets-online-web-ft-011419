require "pry"
class Owner
  
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []
  @@count = 0
  
  def initialize(species)
    @species = species
    @@all << self
    @@count += 1
    @pets = {:fishes => [], :dogs => [], :cats => []}
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
  
  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end
  
  def walk_dogs
    self.pets[:dogs].each { |dog| dog.mood = "happy"}
  end
  
  def play_with_cats
    self.pets[:cats].each { |cat| cat.mood = "happy"}
  end
  
  def feed_fish
    self.pets[:fishes].each { |fish| fish.mood = "happy"}
  end
  
  def sell_pets
    self.pets[:fishes].each { |fish| fish.mood = "nervous"}
    self.pets[:cats].each { |cat| cat.mood = "nervous"}
    self.pets[:dogs].each { |dog| dog.mood = "nervous"}
    
    self.pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def list_pets
    list_string = ''
    self.pets.each do |type, pets|
      if type.to_s == "fishes"
        list_string += "I have #{pets.count} #{type.to_s.chop.chop}, "
      elsif type.to_s == "cats"
        list_string += "and #{pets.count} #{type.to_s.chop}(s)."
      else
        list_string += "#{pets.count} #{type.to_s.chop}(s), "
      end
     end
     list_string
  end
end