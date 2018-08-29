require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists << self.artist
    @@genres << self.genre
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

    #want to collect all genres
    #want to move data from array to hash
    #want to put them into a hash that shows how many times they appear
    genre_hash = {}
    @@genres.each do |genre|
      genre_hash[genre] ||= 0
      genre_hash[genre] += 1
   end
   genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      artist_hash[artist] ||= 0
      artist_hash[artist] += 1
    end
    artist_hash
  end

end

s1 = Song.new("one", "metallica", "metal")
s2 = Song.new("fire and flame", "dragonforce", "metal")
s3 = Song.new("the way i am", "eminem", "rap")
