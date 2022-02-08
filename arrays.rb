# Find an element in an array

array.first
array.last
array[3]

# Arrays are called indexed lists.
# The index starts at 0, not at 1. In the array [A, B, C] the A is at index 0 and the 
# C is at index 2.

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Modifying array elements

#  A method that "mutates the caller" is any method that changes what variable it is affecting.

array.pop     # removes element
array.push    # adds element
array << ""   # adds element (called the shovel)
array.delete_at(1)  # deletes a value at a certain index
array.delete("cat") # deletes a known value (all instances)
array.unshift # adds values to the start of an array


# These methods do not mutate the caller because they don't change the original array. They
# just return a new array.

array.map { |num| num**2}    # iterates over the array appying a block and returns a new array
array.collect # same as above
array.uniq    # deletes all repeats and returns a new array
array.uniq!   # deletes destructively


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Iterating over an array

array.select  # iterates over an array and returns any value that is true

numbers = [1, 2, 3, 4, 5, 6, 7]

numbers.select { |number| number > 4 }
# [5, 6, 7] and it does not mutate the caller

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Methods with a bang (!) suffix

# Usually this indicates that the method will change or mutate the caller permaently.
# (mutate the caller aka behave destructively)

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# to_s

# Ruby automatically compiles the array to a string when it needs to be printed

a = [1 ,2, 3]
puts "It's easy as #{a}"
# It's easy as [1, 2, 3]

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Common array methods

array.method? 

include?  # a predicate that checks to see if a value is in an array (boolean)
  a.include?(3)
  # true

flatten   # makes an array with nested arrays into one array
  a = [1, 2, [3, 4, 5]]
  a.flatten
  # [1, 2, 3, 4, 5]

each_index # returns each index value independently as it iterates over the array
  a = [1, 2, 3]
  a.each_index { |i| puts "This is index #{i}"}
  # This is index 1
  # This is index 2
  # This is index 3

each_with_index # same as above but with two parameters
  a = [1, 2, 3]
  a.each_with_index { |val, idx| puts "#{idx}. #{val}"}
  # 1. 1
  # 2. 2
  # 3. 3

sort    # returns a sorted array, not destructive
  a = [1, 3, 5, 4, 2]
  a.sort
  # [1, 2, 3, 4, 5]

product # combines two arrays into one array
   a = [1, 2, 3]
   a.product([4,5])
   # [[1,4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]
  
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Each vs Map

# each iterates over an array and is usually used with a block. It is preferred to 
# using a for loop. If no block is given, it returns an enumerator.

a = [1, 2, 3]
a.each { |e| puts e}
# 1
# 2
# 3

a = [1, 2, 3]
a.each { |e| puts e + 2}
# 3
# 4
# 5


# map iterates but returns a new array containing the values returned by the block. It creates
# a new array. If no block is given then it returnes an enumerator.

a = [1, 2, 3]
a.map { |x| x**2}
# [1, 4, 9]

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Look up enumerator!

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 1



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 2



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 3



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 4



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 5



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 6



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 7



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 8



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~