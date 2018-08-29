require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@hash = {}
  @@hash2 = {}

  def initialize(name, artist, genre)
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

  @count = 1
  def self.genre_count
    @@genres.each do |genre|
      @@hash[genre] ? @@hash[genre] = @@hash[genre] + 1 : @@hash[genre] = 1
    end
    @@hash
  end

  def self.artist_count
    @@artists.each do |artist|
      @@hash2[artist] ? @@hash2[artist] = @@hash2[artist] + 1 : @@hash2[artist] = 1
    end
    @@hash2
  end

end
