# Question: Write a function to compute a^b efficiently. (A and B are both positive)

# O(n) solution using dynamic programming
def power1(a, b)
  if b == 1
    return a
  end
  
  if b == 0
    return 1
  end

 if b%2 == 0
  return power1(a, b/2) * power1(a, b/2)
 else
  return a * power1(a, b/2) * pwer1(a, b/2) 
 end
end

# O(logn) solution using memoization
def power2(a, b)
  if b == 1
    return a
  end

  if b == 0 
    return 1
  end
  
  temp = power2(a, b/2)
  
  if b%2 == 0
    return temp * temp
  else
    return a * temp * temp
  end
end
