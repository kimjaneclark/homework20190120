require("minitest/autorun")
require("minitest/rg")
require_relative("../Guests")
require_relative("../Songs")
require_relative("../Rooms")

class TestRoom < MiniTest::Test

def setup
  @guest1 = Guest.new("Abigail", 30)
  @guest2 = Guest.new("Finlay", 40)
  @guest3 = Guest.new("Fraser", 30)
  @guest4 = Guest.new("Ken", 100)
  @guest5 = Guest.new("Kim", 50)
  @guest_list =[@guest1,@guest2,@guest3]

  @room = Room.new("Smooth", 4)

  @song1 = Song.new("Just the way you are")
  @song2 = Song.new("Paris")
  @song3 = Song.new("I will survive")

  @playlist = [@song1,@song2,@song3]


end

def test_room_name()
  assert_equal("Smooth", @room.room_name)
end

def test_room_capacity()
  assert_equal(4, @room.capacity)
end

def test_guest_list_empty()
  assert_equal(0, @room.guest_count())
end

def test_add_guest_to_room()
    @room.add_guest_to_room(@guest1)
    assert_equal(1, @room.guest_count())
  end

  def test_add_multiple_guest_to_room()
  @room.add_guest_to_room(@guest1)
  @room.add_guest_to_room(@guest2)
  @room.add_guest_to_room(@guest3)
  assert_equal(3, @room.guest_count())
end

def test_remove_guest_from_room()
  @room.add_guest_to_room(@guest1)
  @room.add_guest_to_room(@guest2)
  @room.add_guest_to_room(@guest3)
  @room.remove_guest_from_room(@guest2)
  assert_equal(2, @room.guest_count())
end

def test_playlist_empty()
  assert_equal(0, @room.playlist_count())
end

def test_add_to_playlist()
  @room.add_song_to_playlist(@song1)
  assert_equal(1, @room.playlist_count())
end

def test_available_capacity()
  @room.add_guest_to_room(@guest1)
  @room.add_guest_to_room(@guest2)
  @room.add_guest_to_room(@guest3)
  @room.available_capacity
  assert_equal(1, @room.available_capacity())
  end

  def test_available_capacity_full()
    @room.add_guest_to_room(@guest1)
    @room.add_guest_to_room(@guest2)
    @room.add_guest_to_room(@guest3)
    @room.add_guest_to_room(@guest4)
    @room.add_guest_to_room(@guest5)
    @room.available_capacity
    assert_nil(@room.available_capacity())
  end

  def test_favourite_song()
    @room.add_song_to_playlist(@song1)
    @room.add_song_to_playlist(@song2)
    @room.add_song_to_playlist(@song3)
    @room.favourite_song(@song)
    assert_equal("Whooo",@room.favourite_song(@song2))
  end



end
