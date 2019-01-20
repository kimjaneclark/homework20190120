require("minitest/autorun")
require("minitest/rg")
require_relative("../Guests")
require_relative("../Songs")
require_relative("../Rooms")

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Abigail", 30)
    @guest2 = Guest.new("Finlay", 40)
    @guest3 = Guest.new("Fraser", 30)
  end

  def test_guest_name
    assert_equal("Abigail", @guest1.name)
  end

  def test_guest_cash
    assert_equal(40, @guest2.cash)
  end
  
end
