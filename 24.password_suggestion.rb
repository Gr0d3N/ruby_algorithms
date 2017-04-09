# Question: You are designing a New User sign-up form for a website. When a user enters text in the password field, you want to suggest possible 'stronger' passwords to the user by swapping in special characters, like turning an "a" into an "@". Given a password represented as a string and a character map that contains common characters and substitutions, create a list of all possible password combinations that can be created.

def passwords_suggestions(password, map)
  password.length.times do |i|
    if map[password[i]]
      temp = password.dup
      temp[i] = map[password[i]]
      puts temp
      passwords_suggestions(temp, map)
    end
  end
end

