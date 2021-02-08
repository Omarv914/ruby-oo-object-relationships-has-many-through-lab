class Artist
  attr_accessor :name, :genre

  @@all = []

  def initialize(name)
      @name = name
      @genre = genre
      @@all << self
  end

  def self.all
      @@all
  end

  def songs
      array = []
      Song.all.each do |song| 
          if song.artist == self
              array << song
          end
      end 
      array
  end

  def new_song(name, genre)
      new_song = Song.new(name, self, genre)
  end

  def genres
      songs.map do |song|
          song.genre
      end
  end

end 