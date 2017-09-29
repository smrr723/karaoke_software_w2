require('minitest/autorun')
require('minitest/rg')

require_relative('../song')

class TestSong < MiniTest::Test

def setup()
  @song = Song.new("Africa", "Toto", 1982)

end

def test_has_all_details()
  assert_equal("Africa", @song.name)
  assert_equal("Toto", @song.artist)
  assert_equal(1982, @song.year)
end
end
