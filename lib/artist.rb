class Artist 
  
  attr_accessor :name, :songs
  
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
    song_name = add_song
  end 

  def self.song_count
    songs.count 
  end
  
end 