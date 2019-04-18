class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres.include?(genre) ? @@genres : @@genres << genre
  end
  

  
  def self.count
    @@count
  end
  
end