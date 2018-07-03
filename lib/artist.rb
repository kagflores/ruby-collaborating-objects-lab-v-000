class Artist
  attr_accessor :name, :songs
  @@all = []


  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    #@songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if Artist.all.find {|artist| artist.name == name}
      performer = Artist.name
    else
      performer = Artist.new(name)
      #@@all << performer
      #performer.save
    end
  end

  def self.all
    @@all
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

end
