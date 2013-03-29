require 'pry'
puts "Give me 5 cities"

city1 = gets.chomp
city2 = gets.chomp
city3 = gets.chomp
city4 = gets.chomp
city5 = gets.chomp

puts "Enter the city populations"
print city1 + " "  
citypop1 = gets.chomp.to_i
print city2 + " "
citypop2 = gets.chomp.to_i
print city3 + " "
citypop3 = gets.chomp.to_i
print city4 + " "
citypop4 = gets.chomp.to_i
print city5 + " "
citypop5 = gets.chomp.to_i

city_pop_hash = {citypop1 => city1, citypop2 => city2, citypop3 => city3, citypop4 => city4, citypop5 => city5}


x = city_pop_hash.sort_by {|a,b| a} 
puts x

puts "The city with the highest population is: #{x[4][1]}"



# y = x.values
# puts "#{y[4]}"

# {citypop1 => citypop1, city2 => citypop2, city3 => citypop3, city4 => citypop4, city5 => citypop5}

# a = city_pop_hash.sort_by {|a,b| b} 
# puts a 