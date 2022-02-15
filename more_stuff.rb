# Regex

# Regex stands for "Regular Expression" and is used for pattern matching, such as:
#   checking the content of a string
#   print 3rd word or character 
#   find and replace

# How to find something in a string

"powerball" =~ /b/
# 5 will be returned, inthis case it means there is a b in the 5th index of the string
# and since 5 is truthy it also evaluates as true

def has_a_b?(string)
  if string =~ /b/
    puts "It's a match!"
  else
    puts "Not a match."
  end
end

has_a_b?("basketball")
has_a_b?("hockey")

# the =~ operator can also have methods attached to it. It will return MatchData or nil

/b/.match("powerball")
#<MatchData "b">

def has_a_b?(string)
  if /b/.match(string)
    puts "It's a match!"
  else
    puts "Not a match."
  end
end

has_a_b?("basketball")
has_a_b?("hockey")

# Regex is used in string matching problems

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Ruby Standard Classes

# Ruby has built in classes to perform small tasks, such as finding the square root of 
# something or the day of the week a date happened on.

Math.sqrt(100)
# 10.0

Math::PI
# 3.14159

t = Time.new(2008, 7, 4)
t.monday?
# false
t.friday?
# true

# Instance Method is a lowercase method like .to_s and Class Method is a capitol 
# method like Math.sqrt.

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Variables as Pointers

# The variable b points to the first instance of a in one memory location while the variable 
# a is reassigned to a new memory location.

a = "hi there"
b = a
a = "not there"

p b # "hi there"
p a # "not there"

# But, if we use another line of code to mutate the caller, in this case a, then the variable 
# b will also be changed in the same way. If you mutate a caller, the variable and any variables
# that point to it will be affected.

a = "hi there"
b = a
a << ", Nan"

p b # "hi there, Nan"
p a # "hi there, Nan"

a = [1, 2, 3, 3]
b = a
c = a.uniq # or a.uniq! to return [1, 2, 3] for all variables

p a # [1, 2, 3, 3]
p b # [1, 2, 3, 3]
p c # [1, 2, 3]

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Blocks and Procs

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



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