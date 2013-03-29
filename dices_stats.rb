require 'pry'
dice1 = dice2 = (1..6).to_a

array = []

100.times {array.push (dice1.sample + dice2.sample)}
puts array
puts
puts

j = i = 2
loop do
	print "#{j} was rolled:       " 
	array.select {|i| i==j}.size.times {print "*"}
	puts
	j += 1
	break if j == 13
end

# print "2 was rolled:       "
# puts array.select {|i| i==2}.size.times {print "*"}
# print "3 was rolled:       " 
# puts array.select {|i| i==3}.size.times {print "*"}
# print "4 was rolled:       " 
# puts array.select {|i| i==4}.size.times {print "*"}
# print "5 was rolled:       " 
# puts array.select {|i| i==5}.size.times {print "*"}
# print "6 was rolled:       " 
# puts array.select {|i| i==6}.size.times {print "*"}
# print "7 was rolled:       " 
# puts array.select {|i| i==7}.size.times {print "*"}
# print "8 was rolled:       " 
# puts array.select {|i| i==8}.size.times {print "*"}
# print "9 was rolled:       " 
# puts array.select {|i| i==9}.size.times {print "*"}
# print "10 was rolled:      " 
# puts array.select {|i| i==10}.size.times {print "*"}
# print "11 was rolled:      " 
# puts array.select {|i| i==11}.size.times {print "*"}
# print "12 was rolled:      " 
# puts array.select {|i| i==12}.size.times {print "*"}
