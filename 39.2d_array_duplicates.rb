# Write a function that determines whether a two-dimensional integer array contains duplicate values within k indices of each other.

def dups?(array, k)
  ints = Hash.new()
  m = array.length
  n = array[0].length

  m.times do |row|
    n.times do |col|
      if ints[array[row][col]]
        row2 = ints[array[row][col]][0]
        col2 = ints[array[row][col]][1]
        diff = (row-row2-1)*n + (n-col) + (n-col2)

        return true if diff >= k
      end

      ints[array[row][col]] = [row, col]

    end
  end

  return false
end
