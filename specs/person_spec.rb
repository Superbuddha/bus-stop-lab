require("minitest/autorun")
require("minitest/rg")
require_relative("../person.rb")

class PersonTest <MiniTest::Test

  def setup()
  @person = Person.new("Mark", 37)
  end

  def test_person_has_name()
    assert_equal("Mark", @person.name())
  end

def test_person_has_age()
  assert_equal(37, @person.age())
end
end 
