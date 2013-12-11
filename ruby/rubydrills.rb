# array = "AAASSSDDDDRDDSASSDDDSSSAD"
# a= array.split(//)
# str = ""
# count = 1

# a.each_with_index do|val, i|
#   if a[i+1] != a[i] && count == 1
#     str << a[i]
#     count = 1
#   elsif a[i+1] != a[i]
#     str << count.to_s + a[i]
#     count = 1
#   else
#     count += 1
#   end
# end
#puts str

##################################################

# primes = []
# a = (2..1000).to_a
# a.each do |i|
#   factors = []
#   a.select{|r| r<(i/2)}.each do |r|
#     factors << r if i % r == 0
#   end
#   primes << i if factors.length == 0
# end
# puts primes

##################################################

# puts "what nth number of fibonnaci do you want?"
# n = gets.chomp.to_i
# a =[0,1]
# (n-2).times do
#   b = a[-1] + a[-2]
#   a.push b
# end
# print a
# puts
# puts a[n-1]

##################################################

# a = [['a',1],['b',2],['c',3]]
# h = {}

# a.map do |i|
#   h["#{i[0]}"]=i[1]
# end

# print h

##################################################

# x = (1..12)
# y = (1..12)

# y.each do |j|
#     x.each {|i| print (i*j).to_s.rjust(4)}
#     print "\n"
# end

##################################################

x = "Alice opened the door and found that it led into a small
passage, not much larger than a rat-hole:  she knelt down and
looked along the passage into the loveliest garden you ever saw.
How she longed to get out of that dark hall, and wander about
among those beds of bright flowers and those cool fountains, but
she could not even get her head through the doorway; `and even if
my head would go through,' thought poor Alice, `it would be of
very little use without my shoulders.  Oh, how I wish
I could shut up like a telescope!  I think I could, if I only
know how to begin.'  For, you see, so many out-of-the-way things
had happened lately, that Alice had begun to think that very few
things indeed were really impossible."

y = x.split(/\b/)
z = y.map {|i| i.split(//)}
a = z.map {|i| i.slice(1..-2).shuffle.push(i[-1]).unshift(i[0]).join}

print y
puts
puts

print z

puts
puts

print a.join



