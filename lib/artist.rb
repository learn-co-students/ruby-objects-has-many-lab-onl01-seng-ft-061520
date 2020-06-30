class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    artist = Song.new(song_name)
    add_song(artist)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def self.song_count
    Song.all.count
  end

end
