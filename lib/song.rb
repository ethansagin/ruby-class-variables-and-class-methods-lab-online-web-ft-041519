class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    genre_list = []
    @@genres.each {|x| genre_list.include?(x) ? genre_list : genre_list << x}
    genre_list
  end

  def self.artists
    artist_list = []
    @@artists.each {|x| artist_list.include?(x) ? artist_list : artist_list << x}
    artist_list
  end

end

