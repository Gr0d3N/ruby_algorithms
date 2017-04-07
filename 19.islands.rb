# Question: You are given a 2d array filled with 1s and 0s. A 0 represents water and a 1 represents land (see figure below). Connected 1s represent a single island. Write a function to find the number of islands from a given 2d array.

def islands(matrix)
  m = matrix.length
  n = matrix[0].length
  islands = 0

  m.times do |x|
    n.times do |y|
      if matrix[x][y] == 1
        islands += 1
        turn_zero(matrix, x, y)
      end
    end
  end
end

def turn_zero(matrix, x, y)
  if !(x < 0 || x > matrix.length || y < 0 || y > matrix[0].length || matrix[x][y] == 0)
    matrix[x][y] = 0
    turn_zero(matrix,x-1,y)
    turn_zero(matrix,x+1,y)
    turn_zero(matrix,x,y-1)
    turn_zero(matrix,x,y+1)
  end
end
