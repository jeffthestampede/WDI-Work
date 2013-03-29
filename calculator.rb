class Menu
  attr_reader :first_number, :second_number, :operation
  # def first_number
  #   @first_number
  # end

  # def second_number
  #   @second_number
  # end

  # def operationclear
  #   @operation
  # end

  def set_first_number
    puts "What is the first number?"
    @first_number = gets.chomp
  end

  def set_second_number
    puts "What is the second number?"
    @second_number = gets.chomp
  end

  def set_operation
    puts "What operation do you want to do?"
    puts "A - Addition"
    puts "S - Subtraction"
    puts "M - Multiplication"
    puts "D - Division"
    @operation = gets.chomp
  end
end

class Calc 
  def initialize(first_number, second_number, operation)
    @first_number = first_number
    @second_number = second_number
    @operation = operation
  end

  def addition
    @first_number.to_f+@second_number.to_f
  end

  def subtraction
    @first_number.to_f-@second_number.to_f
  end

  def multiplication
    @first_number.to_f*@second_number.to_f
  end

  def division
    @first_number.to_f/@second_number.to_f
  end
end


while
  m = Menu.new #new menu class 
  m.set_first_number    
  m.set_second_number
  m.set_operation
  
  c = Calc.new(m.first_number, m.second_number, m.operation) #new calculator class

  case m.operation
    when m.operation.upcase == 'A' 
      puts c.addition
    when m.operation.upcase == 'S' 
      puts c.subtraction
    when m.operation.upcase == 'M' 
      puts c.multiplication
    when m.operation.upcase == 'D' 
      puts c.division
    else
      puts 'Invalid Operation'
  end
end

# what is the first number?
# > 5
# what is the second number?
# > 2
# What is the operation?
# A - 
# S 
# M
# D
# >a
# The result is :7