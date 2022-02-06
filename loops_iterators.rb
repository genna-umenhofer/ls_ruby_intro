# Conditional Loop

i = 0 
loop do
  i = i + 2
  puts i
  if i == 10
    break
  end
end

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Next Loop

i = 0
loop do
  i = i + 2
  if i == 4
    next
  end
  puts i
  if i == 10
    break
  end
end

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Scope of blocks passed to loop:
#   Blocks passed to the loop are accessible inside the loop. However, a block 
#   or variable initialized inside of the loop is not accessible outside of the 
#   loop. 

# Example:

x = 42
loop do
  puts x    # prints 42 becuase x is in the scope inside the block
  x = 2     # changes the value of x
  break
end
puts x      # prints 2 because we changed the value of x


loop do     # this throws an error "undefined local variable or method for 'x'"
  puts x    # because x is defined only within the scope inside the block.
  x = 2
  break
end
puts x 


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# While Loop

x = gets.chomp.to_i

while x >= 0
  puts x
  x = x - 1  # this line can be refactored to 'x -= 1' to be more succinct
end

puts "Done!"

# Tip: if you ever find your program becomes unresponsive, it may be because it is 
# stuck in an infite loop!

# The while method does not hav its own scope as the loop method does. You could define
# a variable within a while method and call it outside of the method.

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Until Loop

x = gets.chomp.to_i

until x < 0
  puts x
  x -= 1
end

puts "Done!"

# Same features as While but does the opposite.

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Do/While Loops

loop do
  puts "Do you want to continue?"
  answer = gets.chomp
  if answer != 'Y'
    puts "See you next time!"
    break
  end
end

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# For Loops



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Conditional Loops Within Loops

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Iterators

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Recursion

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 1

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 2

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 3

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
