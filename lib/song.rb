class Song 
  
  attr_accessor :name, :artist #makes accessible an artist property
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
end


end