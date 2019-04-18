class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genre.include?(genre) ? @@genre : @@genre << genre
  end
  

  
  def count
    @@count
  end
  
end