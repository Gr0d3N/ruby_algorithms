class Tree
  attr_accessor :data, :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end

  def insert(data)
    if @data.nil?
      @data = Node.new(data)
    elsif data <= @data
      if @left.nil?
        @left = Tree.new(data)
      else
        @left.insert(data)
      end
    else
      if @right.nil?
        @right = Tree.new(data)
      else
        @right.insert(data)
      end
    end
  end

  def insert_many(array)
    if array.length > 0
      array.each do |i|
        insert(i)
      end
    end
  end

  def contains?(data)
    if data == @data
      return true
    elsif data <= @data
      if @left.nil?
        return false
      else
        @left.contains?(data)
      end
    else
      if @right.nil?
        return false
      else
        @right.contains?(data)
      end
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
end
