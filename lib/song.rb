class Song
# songs should have a title and should be able to tell you the name of the artist
  attr_accessor :artist, :name
  @@all = [] #this is a class variable
  # when a song is initialized, we can push the instance into the @@all and be able to use Song.all to retrieve all Song instances
def initialize(name)
  @name = name
  @@all << self
  @songs = [] #set an instance variable, @songs, equal to an empty array because our artist doesn't have any songs yet.
end
 def self.all# this is a getter method for the class variable
   @@all
end
def artist_name
if artist
  self.artist.name #this gives allows us to have one simple and descriptive method that could return the name of a given song artist
else
  nil
end
end
end
