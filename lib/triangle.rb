class Triangle
  # write code here
  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

def kind
  if @one + @two <= @three || @one + @three <= @two || @two + @three <= @one || @one <= 0 || @two <= 0 || @three <= 0
        raise TriangleError
    elsif @one == @two && @two == @three
      :equilateral
    elsif @one == @two || @two == @three || @three == @one
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
    def message 
      "You must input a valid triangle!"
    end
  end  
      
      