# Question: Write a function to find the square root of an integer.

def square_root(number)
  error = 0.001
  guess = number.to_f

  while (guess - number.to_f/guess) > error
    guess = (guess + number.to_f/guess)/2
  end

  return guess
end

