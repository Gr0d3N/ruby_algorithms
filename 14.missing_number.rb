# Question: Find the missing number in an array of consecutive integers.
#
# Example:
# input:2,3,4,5,6,7,8,9,10,11,12,13,14,15 output: null
# input:2,3,5,6,7,8,9,10,11,12,13,14,15 output: 4
# input:2,3,4,5,6,7,8,9,10,11,12,14,15 output: 13

def missing_number(array)
  array.length.times do |i|
    if array.first < array.last
      if array[i+1] - array[i] != 1
        return array[i] + 1
      end
    else
      if array[i] - array[i+1] != 1
        return array[i+1] + 1
      end
    end
  end
  return nil
end
