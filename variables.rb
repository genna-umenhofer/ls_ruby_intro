MY_CONSTANT "I am a variable throughout yout app. Constant vaiable."
$var = "I am also available thorughout your app. Global variable."
@@class = "I am a class variable for when each class needs to use one but not its own."
@var = "I'm an instance variable use in the parent class."
var = "I am a local variable, most common."

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 1 - before viewing solution
# name.rb
puts "How old are you?"
age = gets.chomp
age = age.to_i
age_10 = age + 10
age_20 = age + 20
age_30 = age + 30
age_40 = age + 40
puts "In 10 years you will be #{age_10}"
puts "In 20 years you will be #{age_20}"
puts "In 30 years you will be #{age_30}"
puts "In 40 years you will be #{age_40}"

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 2 - before viewing solution
puts "How old are you?"
age = gets.chomp
age = age.to_i
age_10 = age + 10
age_20 = age + 20
age_30 = age + 30
age_40 = age + 40
puts "In 10 years you will be #{age_10}"
puts "In 20 years you will be #{age_20}"
puts "In 30 years you will be #{age_30}"
puts "In 40 years you will be #{age_40}"

puts "What is your name?"
name = gets.chomp
10.times do
  puts name
end

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 4 - before viewing solution
puts "How old are you?"
age = gets.chomp
age = age.to_i
age_10 = age + 10
age_20 = age + 20
age_30 = age + 30
age_40 = age + 40
puts "In 10 years you will be #{age_10}"
puts "In 20 years you will be #{age_20}"
puts "In 30 years you will be #{age_30}"
puts "In 40 years you will be #{age_40}"

puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
10.times do
  puts first_name
end
puts "#{first_name} #{last_name}"

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 5
# In the first code, X is a local varable. The .times function can affect X
# because the .times is not a block. This means that it can reach out of the function,
# so to speak, and increment X even though the X variable is defined before the function.
# It can be said that X is within the scope of the function.
# 
# When X is puts we see that it has been affected by the function. Puts can reach the X 
# variable since the X variable is outside of the function. In the second code, Y is a
# variable defined outside of the funtion, while X is defined inside of the function.
# Y is available to be reached by the function (which, again, is not a block and can 
# reach out to affect external variables) so puts can work on it. X is outside of the scope
# of the function.
#
# However, we see in the .times function that the function increments Y but then makes Y equal 
# to X. In the end X is called by puts and not Y. X is only defined within the .times function, 
# and is therefore not able to be reached by the puts function. The result of running this code 
# shows an error that X is not defined locally. This code can be fixed by difining the X variable 
# after the .times function and before the puts function.