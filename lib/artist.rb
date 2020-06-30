class Artist

  attr_accessor :name

  @@all = []
  @@song_count = 0

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_song(song)
    song.artist = self
    @@song_count += 1
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count += 1
  end
end
