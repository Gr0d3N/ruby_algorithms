# Question: Write a algorithm to determine if a tree is a sub-tree of another tree.

class Node
  attr_accessor :data, :left, :right

  def identical?(t1, t2)
    return true if t1.data == nil && t2.data == nil
    return false if t1.data == nil || t2.data == nil
    return identical?(t1.left, t2.left) && identical?(t1.right, t2.right)
  end

  def sub_tree?(main, sub)
    return true if sub.data == nil
    return false if main.data = nil
    return true if identical?(main, sub)
    return sub_tree?(main.left, sub) || sub_tree?(main.right, sub)
  end
end
