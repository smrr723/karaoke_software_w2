require('minitest/autorun')
require('minitest/rg')

require_relative('../song')

class TestSong < MiniTest::Test

def setup()
  @song = Song.new("Africa", "Toto", 1982)

end

def test_get_separate_details()
  assert_equal("Africa", @song.name)
  assert_equal("Toto", @song.artist)
  assert_equal(1982, @song.year)
end

def test_can_get_song
  assert_equal({name: "Africa", artist: "Toto", year: 1982 }, @song.song_details())
end

def test_can_set_song
  result = @song.add_song("Money for Nothing", "Dire Straits", 1985)
  assert_equal({name: "Money for Nothing", artist: "Dire Straits", year: 1985 }, result)
end


end
