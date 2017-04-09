# Question: Given a string, find the longest substring that only contains unique characters. Example: input: "0a123a45a6" output: "123a45"

def substring(str)
  start = 0
  length = 0

  str.length.times do |s|
    i = 0
    chars = Hash.new()
    while s+i < str.length && !chars[str[s+i]]
      chars[str[s+i]] = true
      i += 1
    end
    if i > length
      length = i
      start = s
    end
  end

  return str[start..start+length-1]
end
