def permute(str, l, r)
  if l == r
    puts str
  else
    (l..r).each do |i|
      str = swap(str, l, i)
      permute(str, l+1, r)
      str = swap(str, l, i)
    end
  end
end

def swap(str, i, j)
  temp = str[i]
  str[i] = str[j]
  str[j] = temp

  return str
end 

str = "ABC"
n = str.length
permute(str, 0, n-1)
 
