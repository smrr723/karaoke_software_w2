class Song

attr_accessor :name, :artist, :year

  def initialize(name, artist, year)
    @name = name
    @artist = artist
    @year = year
    @song_details = {name: @name, artist: @artist, year: @year }
  end


  def song_details()
    return @song_details
  end

  def add_song(name, artist, year)
    @song_details = {name: name, artist: artist, year: year }
  end

end
