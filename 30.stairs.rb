# Question: A man is walking up a set of stairs. He can either take 1 or 2 steps at a time. Given n number of steps, find out how many combinations of steps he can take to reach the top of the stairs.

def stairs(n)
  fib(n+1)
end

def fib(n)
  return  n if n <= 1
  return fib(n-1) + fib(n-2)
end
