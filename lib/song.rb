 class Song 
   attr_accessor :artist
   
  
#     @@all = []
    
  def initialize(song_name)

  end
  
  def artist=(artist_obj)
    @artist = artist_obj
    artist_obj.songs.push(self)
   end
  
end