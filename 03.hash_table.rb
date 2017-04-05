class Node
  attr_accessor :key, :value, :next

  def initialize(key, value)
    @key = key
    @value = value
    @next = nil
  end
end

class HashTable
  attr_accessor :buckets, :size, :table_size

  def initialize(table_size)
    @table_size = (table_size)
    @buckets = Array.new(@table_size)
    @size = 0
  end

  def put(k, v)
    location = k.hash % @table_size
    n = @buckets[location]
    if n.nil?
      @size += 1
      return @buckets[location] = Node.new(k, v)
    else
      while !n.nil? && n.key != k
        p = n
        n = n.next
      end
      if n.nil?
        @size += 1
        return p.next = Node.new(k, v)
      else          
        @size += 1
        return n.value = v
      end
    end
  end

  def get(k)
    location = k.hash % @table_size
    n = @buckets[location]
    if n.nil?
      return nil
    else
      while !n.nil? && n.key != k
        n = n.next
      end
      return nil if n.nil?
      return n.value
    end
  end

  def remove(k)
    location = k.hash % @table_size
    n = @buckets[location]
    if n.nil?
      return nil
    elsif n.key == k
      n_value = n.value
      @buckets[location] = nil
      @size -= 1
      return n_value
    else
      while !n.nil? && n.key != k
        p = n
        n = n.next
      end
      return nil if n.nil?
      p.next = n.next
      @size -= 1
      return n.value
    end
  end

  def size
    puts @size
  end

  def is_empty?
    return @size == 0
  end
end
