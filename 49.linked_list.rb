# Question create a linked list class.

class Node
  attr_accessor :data, :next
  
  def initialize(data)
    @data = data
    @next = nil
  end
end

class LinkedList
  attr_accessor :head, :size

  def initialize(data)
    @head = Node.new(data)
    @size = 1
  end

  def append(data)
    self.initialize(data) if @head.nil?
    current = @head
    while !current.next.nil?
      current = current.next
    end
    current.next = Node.new(data)
    @size += 1
  end

  def append_many(array)
    if array.length > 0
      array.each do |i|
        self.append(i)
      end
    end
  end

  def prepend(data)
    self.initialize(data) if @head.nil?
    new_head = Node.new(data)
    new_head.next = @head
    @head = new_head
    @size += 1
  end

  def delete(data)
    return nil if @head.nil?
    @head = @head.next if @head.data == data
    current = @head
    while !current.next.nil?
      if current.next.data == data
        current.next = current.next.next
      end
      current = current.next
    end
  end

  def to_s
    current = @head
    str = ""
    while !current.nil?
      str += "#{current.data} "
      current = current.next
    end
    return str.strip!
  end
end
