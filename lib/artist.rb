class Artist
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
  end
  def songs
    Song.all.select do |song|
        song.artist == self
end
def add_song(song)
song.artist = self
@songs << song
  end
end
end
