class KaraokeBar

  def initialize()
    @rooms = []
    @guests = []
  end


    def bootup()

      puts ""
      puts "Karaoke Bar v.2000 Software"
      puts ""
      puts "What would you like to do? (Enter 1, 2, 3 or 4)"
      puts ""
      puts "1 - Create a new room"
      puts "2 - Add a guest to an existing room"
      puts "3 - Add a playlist to an existing room"
      puts "4 - Check all rooms status"

      # Put above into a UI / Text function to refactor to one line.

      choice = gets.chomp

      # Case statements
      # if choice 1, puts = please enter room name! Great! Name added.  Please now add a guest to your room.  Ok, now just add a playlist from the list below: (Hint, enter the number of the playlist below to see the full song list)
      case choice
      when 1
        puts "Please enter the room name: "
        room_name = gets.chomp
        new_room = Room.new(room_name)
        @rooms << new_room
        puts "Thanks! Please now add a guest: "
        guest_name = gets.chomp
        puts "...and their favourite song, i.e. Africa by Toto: "
        favourite_song = gets.chomp
        new_guest = Guest.new(guest_name, favourite_song)
        puts "Great! #{guest_name} has been added to the #{new_room} room! Have fun!"

      when 2
        puts "Please enter the guest's name: "
        guest_name = gets.chomp
        puts "...and their favourite song, i.e. Africa by Toto: "
        favourite_song = gets.chomp
        new_guest = Guest.new(guest_name, favourite_song)
        puts "Which room would you like to add #{guest_name} to?"
        puts ""
        puts @rooms.to_s

        puts "Great! #{guest_name} has been added to the #{new_room} room! Have fun!"

      end

    end


end
