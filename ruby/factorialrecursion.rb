def factorial(n)
  i = 1
  while n > 0 do
    i = i * n
    n = n - 1
  end
  return i
end

def recursiveFactorial(x)
  return 1 if x == 1
  x * recursiveFactorial(x-1)
end



require 'rspec'

describe "#factorial" do

  context "I pass in 5" do
    it "returns 120" do
      expect(factorial(5)).to eq 120
    end
  end

   context "I pass in 4" do
    it "returns 24" do
      expect(factorial(4)).to eq 24
    end
  end

   context "I pass in 3" do
    it "returns 6" do
      expect(factorial(3)).to eq 6
    end
  end

   context "I pass in 2" do
    it "returns 2" do
      expect(factorial(2)).to eq 2
    end
  end

end