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
movies = {"Old Classic Movie": 1975, "Mid 00s Movie": 2004, "New Movie": 2013, "Early 00s Movie": 2001, "Oldie But a Goodie": 1981}
puts "#{movies}"

# Exercise 3 after looking at the soution.
movies = { old_classic_movie: 1975,
  mid_00s_movie: 2004,
  new_movie: 2013,
  early_00s_movie: 2001,
  oldie_but_a_goodie: 1981 }
puts movies[:old_classic_movie]
puts movies[:mid_00s_movie]
puts movies[:new_movie]
puts movies[:early_00s_movie]
puts movies[:oldie_but_a_goodie]

# Exercise 4 before looking at the solution. No change after viewing
# solution.
dates = [1975, 2004, 2013, 2001, 1981]
puts dates[0]
puts dates[1]
puts dates[2]
puts dates[3]
puts dates[4]

# Exercise 5 before viewing solution. This got an argument error.
# I got stuck in a loop that did not work.
def factorial(num)
  i = 1
  while i <= n
    n * (n - i)
    i += 1
  end
  puts factorial
end
factorial(5)

# Exercise 5 - accidentally clicked on the solution and saw that what was
#required was much simpler than my method... I thought I was supposed to
#write a method to do this.
puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

# Exercise 6 - this worked beautifully, though the solution was just
# puts 4.30 * 4.30. I think my method is more purposeful because it can
# be reused.
def square_of_three(x, y, z)
  puts x * x
  puts y * y
  puts z * z
end
square_of_three(1.2, 4.8, 5.7)

# Exercise 7 I think that this error is telling me that there is a
# parenthesis prematurely ending the component of the code that starts
# with a curly bracket. To fix this, perhaps the coder should determine
# if there is a stay parenthesis somewhere. Maybe there was one that was
# double-typed or maybe there was one not properly attributed as a string.
