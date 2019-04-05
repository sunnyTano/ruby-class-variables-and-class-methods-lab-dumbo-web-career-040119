

class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artist = []
  @@genre = []

  def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@artist << artist 
  @@genre << genre
end 

def self.count
  @@count
end 

def self.artists
  @@artist.uniq
end 

def self.genres
  @@genre.uniq
end 

def self.artist_count
  artist_count = Hash.new
  @@artist.map do |artist|
    if artist_count[artist]
      artist_count[artist] += 1 
    else
      artist_count[artist] = 1
    end
  end 

  artist_arr
end 
#   def self.artist_count
#     artist_count = {}
#     @@artists.each do |artist|
#       if artist_count[artist] #if the artist is already in the hash
#         artist_count[artist] += 1
#       else
#         artist_count[artist] = 1
#       end
#     end
#     artist_count
#   end
# end

end 