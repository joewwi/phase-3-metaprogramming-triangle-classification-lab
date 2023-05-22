class Triangle
  # write code here
  def initialize l1,l2,l3
    @sides = [l1, l2, l3]
  end

  def kind
    if @sides.any? { |side| side <= 0 } || @sides.sum - @sides.max <= @sides.max
      raise TriangleError, "Invalid triangle sides"
    elsif @sides.uniq.length == 1
      :equilateral
    elsif @sides.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
     
  end

end
