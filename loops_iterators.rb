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

x = gets.chomp.to_i

for i in 1..x do
  puts x - i
end

puts "Done!"



x = [1, 2, 3, 4, 5]

for i in x.reverse do
  puts i
end

puts "Done!"

# For loops also do not have thier own scopes. 

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Conditional Loops Within Loops

x = 0 

while x <= 10
  if x.odd?
    puts x
  end
  x += 1
end

# 'Next' will jump from the line to the next iteration without doing the code beneath it.
# 'Break' will exit the loop and not do any more code from it.

x = 0

while x <= 20
  if x == 3
    x += 1
    next
  elsif x == 20 
    break
  elsif x.odd?
    puts x
  end
  x += 1
end

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Iterators

# Iterators are methods that naturally loop over a given set of data and operate on 
# each item in the set of data.

names = ['Lily', 'Lilah', 'Lacey', 'Lauren']

names.each { |name| puts name }

# A block is just a set of code to be executed. Since this code can fit in one line, we can
# use the curly braces to contain it. For multiline code, use the words 'do' and 'end'.

names = ['Lily', 'Lilah', 'Lacey', 'Lauren']
x = 1                             # This x is called the counter.

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Recursion

def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end

doubler(2)



def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(6)

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 1 - before viewing solution

# This each method will return 2 / 3 / 4 / 5 / 6 becuase it will iterate over each number
# in the array and add one to the number. 

# After viewing solution

# This code does not return anything because it doesn't store the new values of x. The output 
# is just the same array, but it will not be printed to the screen.

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 2 - before solution

puts "Do you want to go?"
x = gets.chomp.to_s

while x != "STOP"
  puts "Do you want to stop?"
  x = gets.chomp.to_s
end

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 3 - before viewing solution

def countdown(start)
  if start >= 0
    puts start
    start -= 1
    countdown(start)
  end
end
countdown(8)

# after viewing solution

def countdown(start)
  if start >= 0
    puts start
    countdown(start - 1)      # I changed this to be more succinct
  end
end
countdown(8)

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
