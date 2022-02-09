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

# Exercise 1 - before viewing solution

arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.select { |num| num == 3 }
  puts "#{number} is in the array."
end

# Exercise 1 - after viewing solution

# My solution won't work because it doesn't actually check if the number is in the array.
# It returns the puts string regardless of the .select block's validity.

arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include?(3)
  puts "#{number} is in the array."
end

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 2 - before viewing solution

# 1. The array starts out with two strings as values. The .product method is called on
# the array which combines two arrays and returns every possibility. In this case, b and a combine
# with 1, 2, and 3. Then, the .delete method is called on the first array in the combined array. 
# This is [[b, 1], [b, 2], [b, 3]]. It is passed the argument arr.first.last, so we are targeting
# [b, 1] and removing the 1. The output will be b, b, 2, b, 3, a, 1, a, 2, a, 3.

# 2. This does essentially the same thing, however the array that is combining with the first array
# has an element of 1 2 3 that stays together. The result of the .product method is the new array
# [[b, [1, 2, 3]], [a, [1, 2, 3]]]. Then, we are targeting the first element's [b, [1, 2, 3]] last 
# element [1, 2, 3] and deleting it. The output is b, a, 1, 2, 3.

# After solution

# I can improve my answer in the way that I describe the actual array output as follows:
# 1. Instead of 'b, b, 2, b, 3, a, 1, a, 2, a, 3' I could have written 
# [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

# 2. Instead of 'b, a, 1, 2, 3' I could have written [["b"], ["a", [1, 2, 3]]]

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 3 - before viewing solution

arr = [["test", "hello", "world"],["example", "mem"]]

puts arr[1][0]

# After solution

# the solution uses the methods to do this:

arr.first.last

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 4 - before viewing solution (no changes after)

# 1. returns 3 because 5 is the fourth element in the array
# 2. returns an error because the brackets [ ] are not a valid way to use index
# 3. returns 8 because that is the 6th element in the array

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 5 - before viewing solution (no changes after)

# a evaluates to e
# b evaluates to A
# c evaluates to nil because the string is not long enough

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 6

# I think what is happening is that the argument 'margaret' doesn't give a location in the array.
# It has to be passed an integer, so in this case 3 because 'margaret' is the 4th element.

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 7 - before viewing solution

coffee_flavors = ['hazelnut', 'caramel', 'mocha', 'vanilla', 'no flavor']

coffee_flavors.each_with_index { |flavor, idx| puts "#{idx}. #{flavor}"}

# after solution

# I would change the index to be index + 1 so that the list does not start at 0:

coffee_flavors = ['hazelnut', 'caramel', 'mocha', 'vanilla', 'no flavor']

coffee_flavors.each_with_index { |flavor, idx| puts "#{idx + 1}. #{flavor}"}

# This decision is based solely on the context of the array. If this were to be applied to a
# real world scenario, no one would start a list of coffee with "0" because it would confuse consumers.

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 8 - before viewing solution

arr = [1, 2, 3]

p arr.map { |x| x += 2}

# I thought that "having two arrays" in the directions meant that I could not mutate the caller.
# after viewing the solution here is how I would change my code:

arr = [1, 2, 3]

new_arr = arr.map { |x| x += 2}

p arr
p new_arr

# I think my version is more concise than the solution given in the book because it is in one line.

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~