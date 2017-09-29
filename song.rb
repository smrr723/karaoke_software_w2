class Song

attr_reader :name, :artist, :year

  def initialize(name, artist, year)
    @name = name
    @artist = artist
    @year = year
    song = {name: @name, artist: @artist, year: @year }
  end

end
