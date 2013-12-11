require 'nokogiri'
require 'open-uri'


url = "http://rez.urbanspoon.com/reservation/start/2086"

while true
d = Nokogiri::HTML(open(url))

text = d.css("div p").first.text.gsub("this restaurant", "State Bird Provisions")


#puts text
if !text.include? "Unfortunately"
  puts text
  puts "NO reservation"
  system("open http://rez.urbanspoon.com/reservation/start/2086")
end
sleep(10)
end
#Online reservations through Urbanspoon are free and instantly confirmed