require './point'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
  def test_simple
    assert_equal("(0,0)", Point.new(0,0).to_s)
    assert_equal("(1,1)", Point.new(1,1).to_s)
  end
  def test_type_check
    assert_raise(RuntimeError) {-Point.new('1','1')}
  end
  def test_failure
    assert_equal("(5,5)", (Point.new(0,0) * 5).to_s, "Producto escalar")
  end
end
