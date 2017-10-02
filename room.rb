class Room

attr_accessor :name

def initialize(name)
  @name = name
  @guests_in_room = 0
  @capacity = 10
  @guest_details = []
end

def guests_in_room()
  return @guests_in_room
end

def capacity()
  return @capacity
end

def add_guest(name, favourite_song)
  @guests_in_room += 1
  @guest_details << [name, favourite_song]
end


end
