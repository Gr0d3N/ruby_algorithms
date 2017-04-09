 # Question: Find the intersection of two unsorted integer arrays.

def way1(a, b)
  return a & b
end

def way2(a, b)
  c = []
  b.each do |i|
    c << i if a.include?(i)
  end

  return c
end

def way3(a, b)
  c = Hash.new()
  d = []

  a.each do |i|
    c[i] = true
  end 

  b.each do |i|
    d << i if c[i]
  end

  return d
end
