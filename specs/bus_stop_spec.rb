require("minitest/autorun")
require("minitest/rg")
require_relative("../bus_stop.rb")
require_relative("../person.rb")

class BusStopTest <MiniTest::Test

def setup()
  @stop = BusStop.new("Buchanan Terminal")
  @passenger1 = Person.new("Mark", 37)
  @passenger2 = Person.new("Joanna", 32)
  @Passenger3 = Person.new("Dean", 22)
end

def test_stop_has_name
  assert_equal("Buchanan Terminal", @stop.name())
end

def test_stop_starts_empty
  assert_equal(0, @stop.queue_count)
end

def test_add_person_to_queue
  @stop.add_passenger(@passenger1)
  assert_equal(1, @stop.queue_count)
end
end
