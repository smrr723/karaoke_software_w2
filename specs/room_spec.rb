require('minitest/autorun')
require('minitest/rg')

require_relative('../room')

class TestRoom < MiniTest::Test
# Room should hold 10 guests

def setup()
  @room = Room.new("Rock Room")
end

def test_get_room_name()
  assert_equal("Rock Room", @room.name())
end

def test_has_capacity()
  assert_equal(10, @room.capacity())
end

def test_add_guest()
  @room.add_guest("Scott", "Africa by Toto")
  assert_equal(1, @room.guests_in_room())
end


end
