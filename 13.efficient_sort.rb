# Question: write an efficient sorting algorithm.
  
def quicksort(array, low, high)
  return nil if array.nil?
  return array if array.length == 0

  i = low
  k = high

  pivot = array[low + (high-low)/2]
  
  while i <= k

    while array[i] < pivot
      i += 1
    end

    while array[k] > pivot
      k -= 1
    end

    if i <= k
      temp  = array[i]
      array[i] = array[k]
      array[k] = temp
      i += 1
      k -= 1
    end
  end

  quicksort(array, low, k) if low < k
  quicksort(array, i, high) if i < high

  return array
end

def mergesort(array)
  if list.length <= 1
    list
  else
    mid = (list.length / 2).floor
    left = mergesort(array[0..mid-1])
    right = mergesort(array[mid..array.length])
    merge(left, right)
  end
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < righ.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end
