# Question: Write a function to determine whether a binary tree's left and right side mirror each other.

def is_mirror?(node1, node2)
  return true if node1.nil? && node2.nil?
  return false if node1.nil? || node2.nil?
  return false if node1.data != node2.data
  return is_mirror?(node1.left, node2.right) && is_mirror?(node1.right, node2.left)
end
