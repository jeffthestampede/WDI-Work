
class Node
  attr_accessor :data
  attr_reader :next

  class Error < StandardError
  end

  def next=(next_node)
    if next_node.is_a?(Node)
      @next = next_node
    else
      raise Error
    end
  end
end

class List
  attr_accessor :first, :first_node, :last, :last_node
  attr_reader :size

  def initialize
    @size = 0
  end

  def empty?
    first_node.nil? && last_node.nil?
  end

  def first
    first_node.data unless empty?
  end

  def last
    last_node.data unless empty?
  end

  def push(object)
    node = Node.new
    node.data = object
    if empty?
      self.first_node = node
    else
      self.last_node.next = node
    end
    self.last_node = node
    @size += 1
    return self
  end
  alias :<< push

  def pop
    val = self.last_node.data
    self.each do |node|
      if node.next == self.last_node
        last_node = node
        node.next = nil
      end
    end
    @size -= 1
    val
  end

  def each(&block)
    i = first_node
    while i
      yield i.data
      i = i.next
    end
  end
end

require 'rspec'
# require 'simplecov'
# SimpleCov.start

describe List do

  describe "#size" do
    it "initializes to size of 0" do
      list = List.new
      expect(list.size).to eq 0
    end
  end

  describe "#pop" do
    it "pops off the last node of the list" do
      list = List.new
      list.push(5)
      list.pop
      expect(list.size).to eq 0
    end

    it "returns the data of the popoff" do
      list = List.new
      list.push(5)
      expect(list.pop).to eq 5
    end
  end

  describe "#each" do
    it "iterates over the list, yielding each value" do
      list = List.new
      list.push(5)
      list.push(10)
      list.push(15)
      i = 0
      list.each do |value|
        i += value
      end
      expect(i).to eq 30
    end
  end

  describe "#push" do
    it "adds a new node to the end of the list and returns the list" do
      list = List.new
      list.push(10)
      list.push(15)
      expect(list.last).to eq 15
      expect(list.push(15)).to be_a List
    end
  end

  describe "#first" do
    it "returns data of the first node in the list" do
      list = List.new
      list.push("matt")
      list.push("erik")
      expect(list.first).to eq "matt"
    end
  end
end

describe Node do

  describe "empty" do
    it "checks to see if the list is empty" do
      n1 = List.new
      expect(n1.empty?).to be_true
    end
  end

  describe "data= and #data" do
    it "sets the data/returns the data" do
      n1 = Node.new
      n1.data = 5
      expect(n1.data).to eq 5
    end
  end

  describe "#next=" do
    it "sets the next node" do
      n1 = Node.new
      n2 = Node.new
      n1.next = n2
      expect(n1.next).to be_a Node
      expect(n1.next).to eq n2
    end

    it "raises an error if you try to assign a non-node object" do
      n = Node.new
      expect {
        n.next = 4
      }.to raise_error(Node::Error)
    end

  end
  describe "#next" do
    it "returns a node" do
      n1 = Node.new
      n2 = Node.new
      n1.next = n2
      expect(n1.next).to be_a Node
      expect(n1.next).to eq n2
    end

    it "returns nil if there is no next node" do
      n = Node.new
      expect(n.next).to be_nil
    end
  end
end,