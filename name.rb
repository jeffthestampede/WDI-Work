

def display_one_to_hundred
  puts (1..100).to_a
  
  # n=0
  # 100.times do
  #   n = n + 1
  #   puts n
  # end

  # n = 0
  #   while n<100
  #     n = n + 1
  #     puts n 
  # end
end

def display_multiples_of_7 upto
  # n = 0
  # upto.times do
  #   n += 1
  #   if n % 7 == 0
  #     puts n
  #   end
  # end
  
  # (1..200).select do |n| 
  #   n % 7 == 0
  # end
  
  # n = 0 
  # while n < upto
  #   n += 1
  #   if n % 7 == 0
  #     puts n
  #   end
  # end
  
  n = 1
  while n < upto
    puts n
    n += 7
  end

  # n = 0
  # while (n * 7) < upto
  #   puts n * 7
  #   n += 1
  # end

  # (200/7).times do |n|
  #   puts (n + 1) * 7
  # end 

end


puts "Please type A or B"
puts "A - Display 1 to 100"
puts "B - Display multiples of 7"

choice = gets.chomp

case choice.upcase
  when 'A'
    puts "OK I will display 1 to 100"
    display_one_to_hundred
  when 'B'
    puts "OK I will display multiples of 7"
    display_multiples_of_7 200
  else
    puts "I am sorry Dave, I don't know how to do that."
end


