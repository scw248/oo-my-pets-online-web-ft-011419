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
  
  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets[:fishes] << fish
    @pets[:fishes]
  end
  
end