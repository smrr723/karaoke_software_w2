require('minitest/autorun')
require('minitest/rg')

require_relative('../guest')

class TestGuest < MiniTest::Test


def setup()
  @guest = Guest.new("Scott", "Africa by Toto")
end

def test_has_name
  result = @guest.name()
  assert_equal("Scott", result)
end

def test_has_favourite_song
  result = @guest.favourite()
  assert_equal("Africa by Toto", result)
end

def test_can_shout
  result = @guest.shout()
  assert_equal("Wooo! Rock and roll!", result)
end


end
