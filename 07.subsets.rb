#Question: Find all subsets of a set.
#Example:
#input: {a,b}
#output: {}{a}{b}{a,b}
#input: {a,b,c}
#output: {}{a}{b}{c}{a,b}{a,c}{b,c}{a,b,c}
#input:{abcd}
#output:{} {d} {b} {c} {a} {bc} {da} {ca} {dc} {db} {ba} {dbca} {bca} {dba} {dca} {dbc}

def subsets(array)
  n = array.length
  (0..1<<n).each do |i|
    print "{"
    (0..n).each do |k|
      if (i & 1<<k) > 0
        print array[k]
      end
    end
    puts "}"
  end
end
