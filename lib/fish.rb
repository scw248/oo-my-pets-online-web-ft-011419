class Fish
  
  attr_accessor :mood
  attr_reader :name
  
  def initialize(name)
    @name = name.freeze
    @mood = "nervous"
  end
end