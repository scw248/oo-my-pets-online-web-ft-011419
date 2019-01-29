class Owner
  
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
  
end