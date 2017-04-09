# Question: Write a function to find out whether a string is a palindrome.

def is_palindrome?(str)
  i = 0
  k = str.length - 1

  while i < k
    return false if str[i] != str[k]
    i += 1
    k -= 1
  end

  return true
end
