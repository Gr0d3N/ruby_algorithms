#Question: Find all subsets of a set.
#Example:
#input: {a,b}
#output: {}{a}{b}{a,b}
#input: {a,b,c}
#output: {}{a}{b}{c}{a,b}{a,c}{b,c}{a,b,c}
#input:{abcd}
#output:{} {d} {b} {c} {a} {bc} {da} {ca} {dc} {db} {ba} {dbca} {bca} {dba} {dca} {dbc}

def subset(array)
  subsets = [[]]

  array.each do |i|
    offset = 0
    index = array.index(i)
    while offset < array.length
      set = [] 
      (array[index..offset]).each do |y|
        set << y
      end
      subsets << set if !set.empty?
      offset += 1
    end
  end

  array[0..array.length].each do |i|
    a = array.select { |c| c != i }
    subsets << a if !subsets.include?(a)
  end
  return subsets
  p subsets
end
  
subset(['a', 'b', 'c'])
