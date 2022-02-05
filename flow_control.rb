# conditional.rb

puts "Put in a number"
a = gets.chomp.to_i

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is neither 3, nor 4"
end

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Example 1
if x == 3
  puts "x is 3"
end

# Example 2
if x == 3
  puts "x is 3"
elsif x == 4
  puts "x is 4"
end

# Example 3
if x == 3
  puts "x is 3"
else
  puts "x is NOT 3"
end

# Example 4: must use "then" keyword when using 1-line syntax
if x == 3 then puts "x is 3" end

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Other ways to write if statements
puts "x is 3" if x == 3

puts "x is NOT 3" unless x == 3

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Combining Expressions
if x && y || z
  # do something
end

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#Ternary Opterator
4 > 5 ? "This is true" : "This is not true"  # "This is not true"

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Case Statements

a = 5

case a
when 5
  puts "a is 5"
when 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end

# Case statements are different than if statements because you don't have to 
# specify the a == you just put the value
# You do not have to provide an argument to a case statement, either:

a = 5

case
when a == 5
  puts "a is 5"
when a == 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end

# This is now very similar to an if statement, so why not just use an if statement?

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 1 - before solution / irb
false
false
false
true
true

# all above are correct

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 2 - before viewing solution

puts "What is your string?"
my_string = gets.chomp
string_length = my_string.length

if string_length == 10
  my_string.upcase!
  puts my_string
else
  puts "Nothing to change here."
end

# After viewing the solution, my code could be improved by making the if statement
# a reusable method. Then I would be able to do it more than once.

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 3 - before viewing solution

puts "Pick a number between 0 and 100"
my_num = gets.chomp.to_i

if (my_num >= 51) && (my_num <= 100)
  puts "This number is between 51 and 100."
elsif (my_num <= 50) && (my_num >= 0)
  puts "This number is between 0 and 50."
elsif (my_num > 100)
  puts "That number is over 100."
else
  puts "Try again"
end

# alternative solution if I wanted to define a method

def range(x)
  if (x >= 51) && (x <= 100)
    puts "This number is between 51 and 100."
  elsif (x <= 50) && (x >= 0)
    puts "This number is between 0 and 50."
  elsif (x > 100)
    puts "That number is over 100."
  else
    puts "Try again"
  end
end

range(42)
range(57)
range(103)
range(-3)

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 4 - before viewing solution ir running code

# Snippet #1
# "False" because a string and an integer cannot be compared

# Snippet #2
# "Did you get it right?" becuase the two expressions are exactly equal to each other.

# Snippet #3
# I'm not sure what this will print becasue there are two elsif statements that are true.
# My educated guess is that it will either print both "Alright now!" and "ALRIGHT NOW!", 
# or it will print "Alrighty!", or it will throw an error.
#     After running this code, it turns out that the first true elsif encountered will be printed
#     to the screen. This one prints "Alright now!"

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 5 - before viewing solution

# This error appears because the method needs an 'end' and the if statement needs an 'end'. 
# It can be fixed by adding another 'end' keyword. It looks like the if statement needs
# the 'end' added to it, based on the indentations.

# After solution

# The 'end' keyyword is not applied to the method, it is applied to the if statement
# because that was the last thing to be read that needed an end statement. The code is
# read in order so it is applied in order. It has nothing to do with indentation.

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 6 - before viewing solution

# 1. Error because the result of a math problem cannot equal a string.
# 2. Error because a string does not equal an integer.
# 3. False because the strings are the same length.
# 4. False because the strings are the same length.
# 5. False because the string on the left is shorter than the string on the right.
# 6. True because the string on the right is longer than the string on the left. 

# After solution

# 1. Correct
# 2. False because a string and an integer are not equal. This is not an error, it's just a false statement.
# 3. Correct
# 4. True because the strings are compared left to right. The 7 is read as greater than 6 even though
#    it is a number represented as a string.
# 5. Correct
# 6. Correct

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~