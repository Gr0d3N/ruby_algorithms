class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end

class Queue
  attr_accessor :head, :tail, :size

  def initialize(data)
    @head = @tail = Node.new(data)
    @size = 1
  end

  def add(data)
    if @head.nil?
      @head = Node.new(data) if @head.nil?
    else
      new_tail = Node.new(data)
      @tail.next = new_tail
      @tail = new_tail
    end
    @size += 1
  end

  def add_many(array)
    if array.length > 0
      array.each do |i|
        self.add(i)
      end
    end
  end
  
  def remove
    return nil if @head.nil?
    head_data = @head.data
    @head = @head.next
    @size -= 1
    return head_data
  end

  def peek
    return nil if @head.nil?
    return @head.data
  end

  def is_empty?
    return @head == nil
  end

  def to_s
    return nil if @head.nil?
    current = @head
    str = ""
    while !current.nil?
      str += "#{current.data} "
      current = current.next
    end
    return str.strip!
  end

  def to_a
    return nil if @head.nil?
    current = @head
    array = []
    while !current.nil?
      array << current.data
      current = current.next
    end
    return array
  end
end
