require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")
require_relative("../bus_stop.rb")

class BusTest <MiniTest::Test

def setup()
  @bus = Bus.new(6, "Calderwood")
  @passenger1 = Person.new("Mark", 37)
  @paasenger2 = Person.new("Joanna", 32)
  @passenger3 = Person.new("Dean", 22)
  @stop1 = BusStop.new("Buchanan Terminal")
  @stop2 = BusStop.new("Central Station")
end

def test_bus_has_route
  assert_equal(6, @bus.route_number())
end

def test_bus_has_destination
  assert_equal("Calderwood", @bus.destination())
end

def test_bus_can_drive
  assert_equal("Brum brum", @bus.drive())
end

def test_has_no_passenger()
  assert_equal(0, @bus.passenger_count())
end

def test_can_add_passengers()
  @bus.pick_up(@passenger1)
  assert_equal(1,@bus.passenger_count())
end

# def test_can_remove_passenger()
#   @bus.pick_up(@passenger1)
#   @bus.pick_up(@passenger2)
#   @bus.drop_off(@passenger2)
# assert_equal(1, @bus.passenger_count())
# end

def test_empty_bus()
    @bus.pick_up(@passenger1)
    @bus.pick_up(@passenger2)
    @bus.empty()
    assert_equal(0, @bus.passenger_count())
  end

  def test_add_passengers_from_stop()
    @stop1.add_passenger(@passenger1)
    @stop1.add_passenger(@passenger2)
    @bus.pick_up_from_stop(@stop1)
    assert_equal(2, @bus.passenger_count())
    assert_equal(0, @stop1.queue_count())
end
end
