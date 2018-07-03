require 'pry'
class Song
  attr_accessor :name, :artist, :songs

  def initialize(name)
    @songs = []
    @name= name
    #@songs << name
  end

  def artist
    self.artist = @artist
  end

  def self.new_by_filename(filename)
    new_name = filename.split (" - ")
    artist = new_name[0]
    song = new_name[1]
    @songs << new_song = Song.new(song)
    #binding.pry
    #@songs << new_song
    new_song.artist_name=(artist)
    #artist.add_song(Song.new(song))
    new_song
    #self.all << new_song
  end

  def artist_name=(name)
    #turn the artist's name as a string into an artist Objective
    #Artist.find_or_create_by_name(name)
    #assign the song to the artist
    #Artist.song = self
    #call on artist instance to add_song
    self.artist = Artist.find_or_create_by_name(name)
  end
end
