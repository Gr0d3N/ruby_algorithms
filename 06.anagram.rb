# Question: Write an algorithm to determine whether two strings are anagrams or not.

def anagrams?(s1, s2)
  return false if s1.length != s2.length 
  chars = Hash.new(0)

  s1.length.times do |i|
    chars[s1[i]] += 1
    chars[s2[i]] -= 1
  end

  s1.length.times do |i|
    return false if chars[s1[i]] != 0
  end

  return true
end
