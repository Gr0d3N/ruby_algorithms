# Question: Curly braces can be used in programming to provide scope-limit. Write a function to print all valid( properly opened and closed) combinations of n-pairs of curly braces.
#
# Example:
# input: 1 output: {}
# input: 2 output: {}{}, {{}}
# input: 3 output: {}{}{}, {}{{}}, {{}}{}, {{}{}}, {{{}}}
# input: 4 output: {}{}{}{}, {}{}{{}}, {}{{}}{}, {}{{}{}}, {}{{{}}}, {{}}{}{}, {{}}{{}}, {{}{}}{}, {{}{}{}}, {{}{{}}}, {{{}}}{}, {{{}}{}}, {{{}{}}}, {{{{}}}}

def print_braces(str, start, finish)
  if start == 0 && finish == 0
    return puts str
  end

  if start > 0
    print_braces(str+"{", start-1, finish)
  end

  if start < finish
    print_braces(str+"}", start, finish-1)
  end
end 
