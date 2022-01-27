# Excercises for Intro to Programming, The Basics, Launch School

# Exercise 1 before looking at the solution.
first_name = "John"
second_name = "Doe"
full_name = "#{first_name} " + "#{second_name}"
puts full_name

# Exercise 2 before looking at the solution. This did not work because a
# number can't be split.
def find_place (x, y)
  answer_arr = []
  answer = x / y
  a = answer.to_s
  b = answer.split
  c = answer_arr.push(a)
  puts "#{answer_arr}"
end
find_place(4567, 88)

#Exercise 2 after looking at the solution.
# One way I would improve this is by asking the user for a number input
# to pass to the function.
def find_place (num)
  ones = num % 1000 % 100 % 10
  tens = num % 1000 % 100 / 10
  hundreds = num % 1000 / 100
  thousands = num / 1000
  puts "The number in the ones place is #{ones}."
  puts "The number in the tens place is #{tens}."
  puts "The number in the hundreds place is #{hundreds}."
  puts "The number in the thousands place is #{thousands}."
end
find_place(4567)

# Exercise 3 before looking at the solution.
