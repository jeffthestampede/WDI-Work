class Rectangle < Object #<Object unecessary new class automatically inherits all objects
  @@number_of_rectangles = 0


  def initialize(width, height)
    @width = width
    @height = height
  end

  def number_of_rectangles
    @@number_of_rectangles += 1
  end

  def width
    @width
  end

  def height
    @height
  end

  def area
    @width * @height
  end

end

r1=Rectangle.new(5,7)
r2=Rectangle.new(6,8)

puts r1.number_of_rectangles
puts r2.number_of_rectangles

# class Square < Rectangle # Square class inherited all objects from rectangle class including area
  
#   def initialize(side)
#     @width = side
#     @height = side
#   end

# end
