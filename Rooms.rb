class Room

  attr_accessor :room_name, :capacity, :guest_list, :playlist

def initialize(room_name, capacity)
    @room_name = room_name
    @capacity = capacity
    @guest_list = []
    @playlist = []
end

def guest_count()
  return @guest_list.length()
end


def add_guest_to_room(guest)
  @guest_list.push(guest)
end

def playlist_count()
  return @playlist.length()
end

def add_song_to_playlist(song)
  @playlist.push(song)
end

# check guest out of room
def remove_guest_from_room(guest)
  @guest_list.delete(guest)
end

def add_song_to_playlist(song)
  @playlist.push(song)
end

def available_capacity
  available_capacity = @capacity -guest_count()
  if available_capacity > 0
  return available_capacity
  else
  return nil
end
end

def favourite_song(title)
  if @playlist.include?(title) == true
    return "Whooo"
  end
end

end
