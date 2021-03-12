class Triangle

  attr_accessor :length1, :length2, :length3

  @@all = []

  def initialize(length1, length2, length3)
@length1 = length1
@length2 = length2
@length3 = length3
@@all << self
  end

  def kind
    if length1 > 0 && length2 > 0 && length3 > 0
      if length1 + length2 > length3 && length1 + length3 > length2 && length3 + length2 > length1
        if length1 == length2 && length2 == length3
        :equilateral
        elsif length1 == length2 || length1 == length3 || length2 == length3
        :isosceles
        else
        :scalene
        end
      else
        begin
            raise TriangleError
            puts error.message
        end
      end
    else
      begin
        raise TriangleError
        puts error.message
    end
    end
  end

  class TriangleError < StandardError
    def message
      "Please enter correct triangle dimensions"
    end
  end

end
