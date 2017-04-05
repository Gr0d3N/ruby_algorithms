# Question: Write a function, that given two sorted lists of integers as input, returns a single sorted list with items from both lists with no duplicate elements.
#
# Example:
#
# input: a = {1,2,3}; b = {4,5,6}; output: c = {1,2,3,4,5,6}; 
# input: a = {7,8,9}; b = {1,8,20,24}; output: c = {1,7,8,9,20,24};
# input: a = {3,3,4}; b = {4}; output: c = {3,4};
# input: a = {1,2,2,3,3,4,5,6,7}; b = {4,5,6,7,8,8,8}; output: c = {1,2,3,4,5,6,7,8};

def merge_arrays(a, b)
  a.sort!
  b.sort!

  i = 0
  y = 0
  merged = []

  while i < a.length && y < b.length
    if a[i] < b[y]
      current = a[i]
      merged << current if !merged.include?(current)
      i += 1
    else
      current = b[y]
      merged << current if !merged.include?(current)
      y += 1
    end
  end

  while i < a.length 
      current = a[i]
      merged << current if !merged.include?(current)
      i += 1
  end

  while y < b.length
      current = b[y]
      merged << current if !merged.include?(current)
      y += 1
  end

  return merged
end
