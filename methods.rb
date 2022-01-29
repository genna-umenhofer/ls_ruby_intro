# Method invocation with a block

[1, 2, 3].each do |num|
  puts num
end

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Method definition

def print_num(num)
  puts num
end

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Mutate the Caller
a = [12, 13, 14]

def mutate(array)
  array.pop
end

p "Before mutate method: #{a}" # [12, 13, 14]
p mutate(a) # 14
p "After mutate method: #{a}" # [12, 13]

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Don't Mutate the Caller
a = [12, 13, 14]

def no_mutate(array)
  array.last
end

p "Before method: #{a}" # [12, 13, 14]
p no_mutate(a) # 14
p "After method #{a}" # [12, 13, 14]

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Return vs Puts

def add_six(num)
  num + 6
end
returned_value = add_six(4)
p returned_value              # 10

def add_six(num)
  return num + 6
end
returned_value = add_six(4)
p returned_value              # 10

def add_six(num)
  return num + 6
  num + 4
end
returned_value = add_six(4)
p returned_value              # 10

def add_six(num)
  return num + 6
  num + 4
end
returned_value = add_six(4)
p returned_value               # 8

def just_assignment(num)
  foo = num + 3
end
p just_assignment(5)            # 8

# The Ruby methods always return the evalutate last line of an expression
# unless an explicit return comes before it.

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Chaining Methods

def add_three(n)
  n + 3
end
p add_three(5)

add_three(5).times { puts "This should print 8 times."} # Result 8 is printed along with 8 instances
# of the words "This should..."

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Method Calls as Arguments

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

p add(20, 45)                 # 65
p subtract(80, 10)            # 70

def multiply(a, b)
  a * b
end

p multiply(add(20, 45), subtract(80, 10))         # 4500

p add(add(20, 45), multiply(add(20, 45), subtract(80, 10)))     # 4615


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# The Call Stack

# This works the same way a stack in MTG does. Start on top and work down unless something adds
# another thing to the top of the stack. Eventually, everything gets run/played and the stack ends
# which means the program ends.

# If the call stack runs out of room the the error SystemStackError will be displayed.

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 1 - before viewing solution
def greeting(name)
  p "Welcome, " + name + "!" 
end

greeting("Genna") # "Welcome, Genna!"

# after viewing solution (alternate way to solve)
def greeting(name)
  "Welcome, " + name + "!" 
end

p greeting("Genna")

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 2 - before viewing solution

# 1. This does not print/puts/return anything to the screen. It just means that the 
#    variable X is equal to the number 2
# 2. This evaluates to the number 2 which gets puts out to the screen.
# 3. This evaluates to the string "Joe" which gets returned to the screen.
# 4. This does not print/puts/return anything to the screen but it does make the vairable 
#    four equal to the string "four"
# 5. This prints the variable something's value "nothing", but without the double
#    quotes due to the fact that it is print and not puts or return.

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 3 - before viewing solution

def multiply(a, b)
  a * b
end

p multiply(40, 23)

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 4 - before viewing solution

# This code will print nothing to the screen. 

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 5 - before viewing soltuion

def scream(words)
  words = words + "!!!!"
end
p scream("Yippeee")  # "Yippeee!!!!"

# after viewing solution video - I understood the question a different way.

# By removing the return and puts words, when I invoke the method, it prints the
# concantenated new words variable. The return value would be the last line executed
# in the method. Therefore, the return would be words = words + "!!!!"

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 6 - before viewing solution

# This error message tells me that the wrong number of arguments have been passed to a method.
# One argument has been passed to 'calculate_product' but the method requires two arguments.