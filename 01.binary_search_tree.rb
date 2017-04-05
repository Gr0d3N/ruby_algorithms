# Wrtie a function to determine if binary tree is a binary search tree.

class Tree
  attr_accessor :data, :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end

  def isBST?(root, min, max)
    return false if root.nil?
    return false if (root.data < min || root.data > max)
    return isBST?(root.left, min, root.data) && isBST?(root.right, root.data, max)
  end
end
