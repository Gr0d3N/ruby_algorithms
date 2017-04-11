#Question: Implement an algorithm to determine if a string has all unique characters.

def unique_characters?(str)
  chars = Hash.new()

  str.length.times do |i|
    if chars[str[i]] == true
      return false
    end
    chars[str[i]] = true
  end
  return true
end
