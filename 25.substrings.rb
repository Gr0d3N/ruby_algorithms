# Question: Find the longest common substring between two texts.

def subtrings(s1, s2)
  length = 0
  start = 0
  s1.length.times do |i|
    s2.length.times do |k|
      x = 0
      if s1[i] == s2[k]
        while s1[i+x] == s2[k+x]
          x += 1
        end
        if x > length
          length = x
          start = i
        end
      end
    end
  end
  return s1[start..start+length]
end
