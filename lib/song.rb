require 'pry'
class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  attr_accessor :name, :artist, :genre

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @@artists << artist #unless @@artists.include?(artist)
    up_artist_count(artist)
    @genre = genre
    @@genres << genre #unless @@genres.include?(genre)
    up_genre_count(genre)
    @@count += 1
  end

  def up_genre_count(genre)
    @@genre_count.store(genre,0) unless @@genre_count.key?(genre)
    @@genre_count[genre] += 1
  end

  def up_artist_count(artist)
    @@artist_count.store(artist,0) unless @@artist_count.key?(artist)
    @@artist_count[artist] += 1
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
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end
end
#
# lucifer = Song.new("Lucifer", "Jay-Z", "rap" )
# problems = Song.new("99 Problems", "Jay-Z", "rap")
# hitme = Song.new("hit me baby one more time", "Brittany Spears", "pop")
# binding.pry
