require "pry"

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << self.genre
    @@artists << self.artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash[genre] == nil
        genre_hash[genre] = 1
      else
        genre_hash[genre] += 1
      end
    end
    genre_hash
  end


# COMPUTER! ITERATE OVER THE @@GENRES ARRAY
# COMPUTER! ADD GENRES AS KEYS TO THE HASH
# COMPUTER! MAKE SURE THE VALUES FOR EACH KEY IS THE FREQUENCY OF EACH GENRE
# COMPUTER! I EXPECT THIS WOULD HAVE TO DO WITH USING .values += 1

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash[artist] == nil
        artist_hash[artist] = 1
      else
        artist_hash[artist] += 1
      end
    end
    artist_hash
  end

end
