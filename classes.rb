class Rectangle < Object #<Object unecessary new class automatically inherits all objects
  
  def initialize(width, height)
    @width = width
    @height = height  
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

#r1=Rectangle.new(5,7)
#r2=Rectangle.new(6,8)

class Square < Rectangle # Square class inherited all objects from rectangle class including area
  
  def initialize(side)
    @width = side
    @height = side
  end

end
