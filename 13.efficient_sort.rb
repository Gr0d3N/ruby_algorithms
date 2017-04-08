# Question: write an efficient sorting algorithm.

def quicksort(array, low, high)
  return nil if array.nil?
  return array if array.length == 0

  i = low
  j = high

  pivot = array[low + (high-low)/2]
  
  while i <= j

    while array[i] < pivot
      i += 1
    end

    while array[j] > pivot
      j -= 1
    end

    if i <= j
      temp = array[i]
      array[i] = array[j]
      array[j] = temp
      i += 1
      j -= 1
    end
  end

  quicksort(array, low, j) if low < j
  quicksort(array, i, high) if i < high

  return array
  p array
end

a = [6,7,8,20,1,2,3]

quicksort(a,0,7)

