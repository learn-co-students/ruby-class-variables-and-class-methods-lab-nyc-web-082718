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
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    #return array of artist
    #get each artist
    #list unique artist
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    hash = {}
    @@genres.each do |type|
      if hash[type]
        hash[type] += 1
      else
        hash[type] = 1
      end
    end
    hash
  end

  def self.artist_count
    hash = {}
    @@artists.each do |singer|
      if hash[singer]
        hash[singer] += 1
      else
        hash[singer] = 1
      end
    end
    hash
  end

end
