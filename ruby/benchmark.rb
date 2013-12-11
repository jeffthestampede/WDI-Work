require 'benchmark'


Benchmark.bm do |x|
  x.report("Array Insert") do
    a = []
    10000000.times do
      a << rand(1000000)
    end
    #a.include? rand(1000000)
  end
end


Benchmark.bm do |y|
  y.report("Hash insert") do
    h = {}
    1000000.times do
      randomnumber = rand(1000000)
      h[randomnumber] = randomnumber
    end
    #h.has_key? rand(1000000)
  end
end


a = []
10000000.times do
  a << rand(1000000)
end

Benchmark.bm do |x|
  x.report("Array search") do
    a.include? rand(1000000)
  end
end


h = {}
1000000.times do
  h[rand(1000000)] = rand(1000000)
end

Benchmark.bm do |x|
  x.report("hash key search") do
    1000000.times {h.has_key? rand(1000000)}
  end
end

Benchmark.bm do |x|
  x.report("hash value search") do
    h.has_value? rand(1000000)
  end
end
