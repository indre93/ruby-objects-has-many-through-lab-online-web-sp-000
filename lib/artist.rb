class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    song.artist = self
  end

  def songs
    self.songs << song.name
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    Song.all.select do |genre|
      genre.artist == self
    end
  end

end
