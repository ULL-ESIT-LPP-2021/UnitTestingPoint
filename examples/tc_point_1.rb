require './point'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
  def test_simple
    assert_equal("(0,0)", Point.new(0,0).to_s)
    assert_equal("(1,1)", Point.new(1,1).to_s)
  end
end
