class Triangle
  # write code here
  attr_accessor :a, :b, :c
  

  def initialize(a, b, c)
    @a=a
    @b=b
    @c=c
  end

  def kind
    validate_triangle

    if a==b && b ==c
      :equilateral
    elsif a!=b && b!=c && c!=a
      :scalene
    else
      :isosceles
    end

  end



  def traingle_correct?
    a + b > c && a + c > b && b + c > a
  end
  def postive_traingle?
    [a,b,c].all?(&:positive?)
  end

def validate_triangle
  raise TriangleError unless traingle_correct? && postive_traingle?
end


  class TriangleError < StandardError

    # triangle error code
  end
end