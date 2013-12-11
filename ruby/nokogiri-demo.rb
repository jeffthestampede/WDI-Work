require 'nokogiri'
require 'open-uri'

url = "http://www.foopee.com/punk/the-list/by-date.0.html"

d = Nokogiri::HTML(open(url))

d.css("ul li b").each do |show|
  puts show.text.gsub(", SF", "")
end


url2 = "http://www.urbandictionary.com/define.php?term=#{ARGV[0]}"

d2 = Nokogiri::HTML(open(url2))

puts d2.css(".definition").first.text