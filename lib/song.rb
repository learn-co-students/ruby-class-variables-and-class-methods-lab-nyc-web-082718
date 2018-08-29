class Song

  attr_accessor :name,:artist,:genre
  @@count = 0
  @@artists = []
  @@genres = []


  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.uniq.each do |genre|
      count = 0
      count = @@genres.select{|entry| entry == genre}.size
      genre_count[genre] = count
    end
    return genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.uniq.each do |artist|
      count = 0
      count = @@artists.select{|entry| entry == artist}.size
      artist_count[artist] = count
    end
    return artist_count
  end
end
