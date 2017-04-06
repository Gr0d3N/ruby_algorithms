#Question: Given an unsorted, even-numbered array of integers, divide the array into two lists of the equal sizes such that their total is as close as possible
#
#Example:
#input {1000,500,200,1,5,10,50,70,70,100} output: List 1 : 500, 200, 100, 70, 70, List 2 : 1000, 50, 10, 5, 1, 
#input {50,10,200,150,900,250,40,50,950,5,90,80,60,600} List 1: 900, 600, 90, 60, 50, 10, 5, List 2: 950, 250, 200, 150, 80, 50, 40,

def even_lists(array)
  mid = array.length / 2
  list1 = []
  list2 = []
  sum1 = 0
  sum2 = 0

  array.sort!
  i = array.length

  while i > 0
    i -= 1
    if sum1 == 0
      list1 << array[i]
      sum1 += 1
    elsif list1.length == mid
      list2 << array[i]
      sum2 += 1
    elsif list2.length == mid
      list1 << array[i]
      sum1 += 1
    elsif sum1 + array[i] > sum2 + array[i]
      list2 << array[i]
      sum2 += 1
    else
      list1 << array[i] 
      sum1 += 1
    end
  end
  return list1, list2
  p list1
  p list2
end
