def linear_search(haystack, needle)
  haystack.each_with_index do |hay, index|
    return index if hay == needle
  end
  return nil
end

#the haystack must be sorted
def phil_search(haystack, needle)
  size = haystack.size
  midpoint = (size / 2.0).round
  value = haystack[midpoint]
  if value > needle
    linear_search(haystack[0...midpoint], needle)
  elsif value < needle
    linear_search(haystack[midpoint...size], needle)
  else
    value
  end
end

# def matt_search(haystack, needle)
#   while true
#     size = haystack.size
#     midpoint = (size / 2.0).round
#     if needle > haystack[midpoint]

#     elsif needle < haystack[midpoint]

#     else
#       return midpoint
#     end
#   end

# end



def binary_search(haystack, needle)
  size = haystack.size
  midpoint = (size / 2.0).round
  # case
  #   when value > needle then binary_search(haystack[0...(midpoint-1)], needle)
  #   when value < needle then binary_search(haystack[(midpoint+1)..size], needle)
  #   else midpoint
  # end
  return nil if haystack[midpoint].nil?
  if haystack[midpoint] > needle
    binary_search(haystack[0...(midpoint-1)], needle)
  elsif haystack[midpoint] < needle
    binary_search(haystack[(midpoint+1)..size], needle)
  else
    return midpoint
  end
end




require 'rspec'

describe "#linearsearch"  do

  it "returns the index of an element that exists in an array" do
    a = ('a'..'m').to_a
    expect(linear_search(a, 'c')).to eq 2
    a.shuffle!
    expect(linear_search(a, 'c')).not_to be_nil
  end

  it "returns nil if element does not exist in an array" do
    a = ('a'..'m').to_a.shuffle
    expect(linear_search(a, 'z')).to be_nil
  end
end

describe "#philsearch" do

  it "returns the index of an element that exists in an array" do
    a = ('a'..'m').to_a
    expect(binary_search(a, 'c')).to eq 2
  end

  it "returns nil if element does not exist in an array" do
    a = ('a'..'m').to_a
    expect(binary_search(a, 'z')).to be_nil
  end
end
