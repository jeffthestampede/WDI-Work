#open a file 
f = File.new('data.txt', 'w+') 
#file is a class responds to methods
#'w+' read and writing update file
puts "What is your name?"
name = gets.chomp
#write to the file
f.puts(name)
#close the file 
f.close
#re-open the file
f = File.new('data.txt', 'r') #'r': reading only file
puts 'Your name is:'
#display contents of the file 
puts f.read