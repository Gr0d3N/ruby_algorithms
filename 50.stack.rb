class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end

class Stack
  attr_accessor :top, :size

  def initialize(data)
    @top = Node.new(data)
    @size = 1
  end

  def push(data)
    return @top = Node.new(data) if @top.nil?
    new_top = Node.new(data)
    new_top.next = @top
    @top = new_top
    @size += 1
  end

  def push_many(array)
    if array.length > 0
      array.each do |i|
        self.push(i)
      end
    end
  end

  def pop
    return nil if @top.nil?
    top_data = @top.data
    @top = @top.next
    @size -= 1
    return top_data
  end

  def peek
    return nil if @top.nil?
    return @top.data
  end

  def is_empty?
    return @top == nil
  end

  def to_s
    return nil if @top.nil?
    current = @top
    str = ""
    while !current.nil?
      str += "#{current.data} "
      current = current.next
    end
    return str.strip!
  end

  def to_a
    return nil if @top.nil?
    current = @top
    array = []
    while !current.nil?
      array << current.data
      current = current.next
    end
    return array
  end
end
