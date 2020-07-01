
class Artist 
  
  attr_accessor :name, :song
  
  def initialize(name)
    @name = name
  end 
  
  def add_song(song)
    self.songs << song 
    song.artist = self
  end 
    
  def songs
    Song.all.select do |song|
      song.artist = self
    end 
  end 
    
  def add_song_by_name(song_name)
    song_name = Song.new(song_name)
  end 

  def self.song_count
    Song.all.count
  end
  
end 