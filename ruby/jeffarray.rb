# length/size
# first
# last
# push
# pop
# shift
# unshift
# index
# sort
# & and |


class JeffArray

  def initialize
    @size = 0
  end

  def size
    @size
  end
  alias length size

  def push(object)
    instance_variable_set("@var#{@size}".to_sym, object)
    @size += 1
  end
  alias :<< push

  def pop
    @size -= 1
    remove_instance_variable("@var#{@size}".to_sym)
  end

  def slice(index)
    instance_variable_get("@var#{index}".to_sym) unless index < 0 #|| index >= @size
  end
  alias :[] slice

  def size
    @size
  end
  alias length size

  def first
    instance_variable_get("@var0".to_sym)
  end

  def last
    instance_variable_get("@var#{@size-1}".to_sym)
  end

  def shift
    val = first
    @size -= 1
    @size.times do |i|
      next_val = instance_variable_get("@var#{i+1}".to_sym)
      instance_variable_set("@var#{i}".to_sym, next_val)
    end
    remove_instance_variable("@var#{@size}".to_sym)
    val
  end

  def unshift(object)
    @size.times do |i|
      next_val = instance_variable_get("@var#{i+1}".to_sym)
      instance_variable_set("@var#{i}".to_sym, next_val)
    end
    instance_variable_set("@var0".to_sym, object)


  end


end

require 'rspec'

describe JeffArray do


  it "initializes with a size of zero" do
    array = JeffArray.new
    expect(array.size).to eq 0
  end

  it "allows pushing elements to the end" do
    array = JeffArray.new
    array.push(5)
    expect(array.size).to eq 1
    expect(array.slice(0)).to eq 5
  end

  it "allows popping elements off the array" do
    array = JeffArray.new
    array.push(5)
    expect(array.pop).to eq 5
    expect(array.length).to eq 0
  end

  it "returns first element" do
    array = JeffArray.new
    array.push(5)
    array.push(6)
    expect(array.first).to eq 5
  end

  it "returns last element" do
    array = JeffArray.new
    array.push(5)
    array.push(6)
    expect(array.last).to eq 6
  end

  it "allows shift" do
    array = JeffArray.new
    array.push(5)
    array.push(6)
    before_size = array.size
    object = array.shift
    expect(object).to eq 5
    expect(array.size).to eq before_size - 1
    expect(array[before_size]).to be_nil
  end

end

