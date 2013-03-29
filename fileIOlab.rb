#must have database.txt file created 
require 'pry'
f_read = File.new('database.txt', 'r')
stored_name = f_read.gets
f_read.close

puts "What is your name?"
name = gets.chomp


if name === stored_name.chomp
  puts "Welcome back, #{name}"
else
  f_write = File.new('database.txt', 'w+')
  f_write.puts name
  f_write.close
  puts "I'll remember you next time."
end
