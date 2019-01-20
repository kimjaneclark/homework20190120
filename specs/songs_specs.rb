require("minitest/autorun")
require("minitest/rg")
require_relative("../Guests")
require_relative("../Songs")
require_relative("../Rooms")

class TestSong < MiniTest::Test

@song1 = Song.new("Just the way you are")
@song2 = Song.new("Paris")
@song3 = Song.new("I will survive")
end

end
