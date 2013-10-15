require 'lib/point'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
  def setup
    @origen = Point.new(0,0)
    @unidad = Point.new(1,1)
  end
  def tear_down
    # nothing
  end
  def test_simple
    assert_equal("(0,0)", @origen.to_s)
    assert_equal("(5,5)", (@unidad*5).to_s)
    assert_equal("(-1,-1)", (-@unidad).to_s)
    assert_equal("(1,1)", (@origen + @unidad).to_s)
  end
  def test_type_check
    assert_raise(RuntimeError) {Point.new('1','1')}
  end
  def test_failure
    assert_equal("(5,5)", (@origen * 5).to_s, "Producto escalar")
  end
end
