class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3 

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def greater_than_zero?
    if (self.side1 > 0 && self.side2 > 0 && self.side3 > 0)
      return true
    else
      return false
    end
  end

  def two_sides_larger?
    side4 = @side1 + @side2 
    if (@side1 + @side2 > @side3 && @side2 + @side3 > @side1 && @side1 + @side3 > @side2) 
      return true
    else
      return false
    end
  end

  def valid_triangle?
    if (self.greater_than_zero? && self.two_sides_larger?)
      return true 
    else
      return false
    end 
  end

  def equilateral
    (self.side1  == self.side2) && (self.side2 == side3) 
  end

  def scalene
    (self.side1 != self.side2) && (self.side2 != self.side3) && (self.side1 != self.side3)
  end

class TriangleError < StandardError
end

  def kind
      raise TriangleError if self.valid_triangle? == false 
      if self.equilateral 
        :equilateral 
      elsif self.scalene
        :scalene
      else
        :isosceles
      end
  end

  
end
