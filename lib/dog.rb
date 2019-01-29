class Dog
  
  attr_reader :name
  
  def iniitalize(name)
    @name = name.freeze
  end
end