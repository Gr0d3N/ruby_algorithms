# Question: Write an implementation of a Stack that supports push(), pop(), and min() functions in constant time.

class Node
  attr_accessor :data, :next
  
  def initialize(data)
    @data = data
    @next = nil
  end
end

class Stack
  attr_accessor :top, :min

  def set_top(data)
    @top = Node.new(data)
    @min = Node.new(data)
  end

  def push(data)
    if @top.nil?
      self.set_top(data)
    else
      new_top = Node.new(data)
      new_top.next = @top
      if data < @top.data
        new_min = Node.new(data)
        new_min.next = @min
        @min = new_min
      end
      return @top = new_top
    end
  end

  def push_many(array)
    if array.length > 0
      array.each do |i|
        self.push(i)
      end
    end
  end

  def peek
    if @top.nil?
      return nil
    else
      return @top.data
    end
  end

  def pop
    if @top.nil?
      return nil
    else 
      top_data = @top.data
      @min = @min.next if top_data == @min.data
      @top = @top.next
      return top_data
    end
  end

  def min
    return nil if @min.nil?
    return @min.data
  end

  def is_empty?
    return @top.ni?
  end

  def to_s
    return nil if @top.nil?
    current = @top
    str = ""
    while !current.nil?
      str += "#{current.data} " 
      current = current.next
    end
    return str.strip
  end

  def to_a
    return nil if @top.nil?
    current = @top
    arr = []
    while !current.nil?
      arr << current.data
      current = current.next
    end
    return arr
  end
end

