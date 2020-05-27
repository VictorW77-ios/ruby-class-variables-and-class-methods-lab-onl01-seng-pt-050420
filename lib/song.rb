class Song
  @@count = 0 
  @@artists = []
  @@genres = []
  attr_accessor :name, :artist, :genre
  
  def initialize(name,artist,genre)
    @name = name 
    @artist = artist 
    @@artists.push artist
    @genre = genre
    @@genres.push genre
    @@count += 1
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
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash[genre]?
        genre_hash[genre] += 1
      else 
        genre_hash[genre] = 1
      end
      genre_hash
  end
  
end