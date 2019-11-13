class Artist 
    attr_accessor :name
    attr_reader :songs
    @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = [] 
  end
  
  def self.all
    @@all
  end
  
  def add_song(song_obj)
    @songs << song_obj
  end
  
  def self.find_or_create_by_name(artist_name)
    self.find_by_name(artist_name) || self.create_by_name (artist_name)
  end 
end 