# Question: Write a function to convert a number to its binary format and vice versa.

def decimal_to_binary(n)
  str = ""
  while n != 0
    str.prepend((n%2).to_s) 
    n /= 2
  end

  return str
end

def binary_to_decimal(str)
  i = str.length - 1
  n = 0
  p = 0

  while i >= 0
    if str[i].to_i == 1
      n += 2**p
    end
    i -= 1
    p += 1
  end

  return n
end
