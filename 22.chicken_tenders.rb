# Question:A local fast food restaurant sells chicken tenders in packages of 6, 9 or 20. Thus, it is possible, for example, to buy exactly 15 pieces of chicken (with one package of 6 and a second package of 9), but it is not possible to buy exactly 16 , since no non- negative integer combination of 6's, 9's and 20's add up to 16. Write a function that takes one argument, n, and returns True if it is possible to buy a combination of 6, 9 and 20 pack units such that the total number of chicken tenders equals n, and otherwise returns False.

def pieces(n)
  if n < 0
    return false
  elsif n%6 == 0 || n%9 == 0 || n%20 == 0
    return true
  else
    return pieces(n-6) || pieces(n-9) || pieces(n-20)
  end
end
