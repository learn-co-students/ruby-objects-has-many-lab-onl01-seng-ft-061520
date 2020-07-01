# class Artist
#     attr_accessor :name, :songs
  
#     def initialize(name)
#       @name = name
#     end
  
#     def songs
#       Song.all.select do |song|
#          song.artist == self
#         end
#    end

#     def add_song(song)
#       song.artist = self
#     end
  
#     def add_song_by_name(name)
#       singer = Song.new(name)
#       add_song(singer)
#     end
  
#     def self.song_count
#       Song.all.count
#     end
#   end

# require 'pry'
# class Artist
#  attr_accessor :name, :songs

#  def initialize(name)
#    @name = name
#  end

#  def songs
#     Song.all.select do |song|
#         song.artist == self
#         end
#     end

#  def add_song(song)
#     song.artist = self # refer to artist
#  end

#  def add_song_by_name(song_name)
#     #binding.pry
#     singer = Song.new(song_name)
#     add_song(singer)
#  end

# def self.song_count
#     #binding.pry
#     Song.all.song.count
# end

# end

require 'pry'

class Artist

  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    Song.all.select do |song|
       song.artist == self
      end
    end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

   def self.song_count
     #binding.pry
     Song.all.count
    end

 end