module Yeller
  def speak message
    puts "I SAID: #{message.upcase}"
  end
end

module Whisperer
  def speak message
    puts "(i said: #{message.downcase}"
  end
end

module Talker
  def whisper message
    puts "(i said: #{message.downcase}"
  end
  def yeller message
    puts "I SAID: #{message.upcase}"
  end
end
class Person
  include Yeller    #include module Yeller
  include Whisperer #include module Whisperer
  attr_accessor :name, :hair_color, :age, :height, :weight
  # def name             attr_reader
  #   @name
  # end
  # def name = name      attr_writer
  #   @name = name
  # end

  def initialize
  
  end

  def speak message
    #puts "I said: #{message}"
    super               #inherits module from Whisperer because it is about 
  end

end


#don't need to include module 
#j.extend Whisperer 