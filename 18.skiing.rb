# Question: Imagine you have a 2D array that represents a ski slope (see figure below). An index with a value of 1 represents a tree. The skier can only travel right and down along the array. Write an algorithm to determine whether a clear path exists for the skier to cross the finish line.

def path_exists?(matrix, x, y)
  return false if x == matrix.length || y == matrix[x].length || matrix[x][y] == 1
  return true if x == (matrix.length)-1 && y == (matrix[x].length)-1 
  return path_exists?(matrix, x+1, y) || path_exists?(matrix, x, y+1)
end
