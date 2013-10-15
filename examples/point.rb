class Point
  attr_reader :x, :y
  def initialize(x, y)
    @x, @y = x, y
  end
  def to_s
    "(#{@x},#{@y})"
  end
  def *(value)
    Point.new(@x * value, @y * value)
  end
  def -@
    Point.new(@x * -1, @y * -1)
  end
  def + (other)
    Point.new(@x + other. x, @y + other.y)
  end
end
