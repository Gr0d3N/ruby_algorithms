# Question: Write a function to find the nth smallest element in a binary search tree

class Tree
  attr_accessor :data, :left, :right

  @@array = []

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end

  def insert(value)
    if value <= @data
      if @left.nil?
        @left = Tree.new(value)
      else
        @left.insert(value)
      end
    else
      if @right.nil?
        @right = Tree.new(value)
      else
        @right.insert(value)
      end
    end
  end

  def insert_many(array)
    if array.length > 0
      array.each do |i|
        self.insert(i)
      end
    end
  end

  def contains?(value)
    if value == @data
      return true
    elsif value <= @data
      return nil if @left.nil?
      return @left.contains?(value)
    else
      return nil if @right.nil?
      return @right.contains?(value)
    end
  end
  
  def print_in_order
    @left.print_in_order if !@left.nil?
    puts @data
    @right.print_in_order if !@right.nil?
  end

  def print_pre_order
    puts @data
    @left.print_pre_order if !@left.nil?
    @right.print_pre_order if !@right.nil?
  end

  def print_post_order
    @left.print_post_order if !@left.nil?
    @right.print_post_order if !@right.nil?
    puts @data
  end

  def insert_nodes_to_array
    @left.to_a if !@left.nil?
    @@array << @data
    @right.to_a if !@right.nil?
  end

  def to_a
    self.insert_nodes_to_array
    return @@array
  end

  def nth_smallest(n)
    self.to_a
    return @@array[n-1]
  end
end
