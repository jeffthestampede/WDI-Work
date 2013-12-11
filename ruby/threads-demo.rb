def yelp
  #sleep 3 //simulate pull from yelp API
  ["review 1", "review 2"]
end

def foursquare
  #sleep 4
  ["checkin1", "checkin2"]
end

def instagram
  #sleep 3
  ["pic1", "pic2"]
end


things = []
yelp_thread = Thread.new{yelp}
foursquare_thread = Thread.new{foursquare}
instagram_thread = Thread.new{instagram}

things<<yelp_thread.value
things<<foursquare_thread.value
things<<instagram_thread.value

puts things.sort
