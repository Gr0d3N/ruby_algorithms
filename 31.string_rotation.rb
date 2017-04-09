# Question: In Java, the String class includes the function contains(CharSequence s) that returns true if the string contains the given sequence of values. Given two strings, write a function to determine if one string is a rotation of another string.
#
# Example:
#
# input: {"computerscience","tersciencecompu"} output: true 

def is_rotation?(s1, s2)
  return false if s1.lenght != s2.lenght
  ss = s1 + s1
  return ss.include?(s2)
end
