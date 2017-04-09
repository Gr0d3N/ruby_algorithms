# Question: Write a function that determines whether a String contains duplicate characters within k indices of each other.

def dups?(str, k)
  chars = Hash.new()
  str.length.times do |s|
    if chars[str[s]]
      return true
    end

    chars[str[s]] = true

    if s >= k
      chars[str[s-k]] = false
    end
  end
  return false
end
