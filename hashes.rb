
# What is a hash?

# A hash is like an array, but instead of an index, elements are stored by keys.
# Key-value pairs are an associative representation of data.

# add to a hash
person = {height: '5 ft 5 in', wieght: '180 lbs'}

person[:hair] = 'brown'
person[:age] = '28 years'

person = {height: '5 ft 5 in', wieght: '180 lbs', hair: 'brown', age: '28 years'}

# remove from a hash
person = {height: '5 ft 5 in', wieght: '180 lbs', hair: 'brown', age: '28 years'}

person.delete(:age)

person = {height: '5 ft 5 in', wieght: '180 lbs', hair: 'brown'}

# retrieve information from a hash
person = {height: '5 ft 5 in', wieght: '180 lbs', hair: 'brown', age: '28 years'}

person[:weight]
=> 180 lbs

# merge two hashes together
person = {height: '5 ft 5 in', wieght: '180 lbs', hair: 'brown', age: '28 years'}

person.merge!(new_hash)

# with the bang (!) suffix, this made the change destructive. Without, we could have kept 
# the original hash.


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Iterating over hashes

person = {height: '5 ft 5 in', wieght: '180 lbs', hair: 'brown', age: '28 years'}

person.each do |key, value|
  puts "Genna's #{key} is #{value}"
end

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Hashes as optional parameters

def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}."
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]} years old and I live in #{options[:city]}."
  end
end

greeting("Genna")
greeting("Genna", {age: 28, city:'Janesville'})
greeting("Genna", age: 28, city:'Janesville')

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Hashes vs Arrays

# When to use a hash - if the data needs to be with a specific label
# When to use an array - if the order matters
# Do you need a queue (first in, first out) - array
# Do you need a stack (first in, last out) - array

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Hash Keys

# Any data stype can be a key - even another hash!

{"height" => "6 ft"}                          # String as a key
{["height"] => "6 ft"}                        # Array as a key
{1 => "one"}                                  # Integet as a key
{45.678 => "forty five with some left over"}  # Float as a key
{{key: "key"} => "hash as a key"}             # Hash as a key

# if you don't use a symbol as a key, then you have to use the old style =>

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Common Hash Methods

name_and_age = {"Genna" => 28, "Brittney" => 27, "Stephanie" => 24}

key? # check if a hash has a specific key
  name_and_age.key?("Genna")
  # => true
  name_and_age.key?("Brofelia")
  # => false

select # pass a block and return key value pairs
  name_and_age.select { |k,v| k == "Brittney"}
  # => {"Brittney"=>27}

fetch # pass a key and reutrns value if it exists
  name_and_age.fetch("Stephanie")
  # => 24

to_a # returns an array version of the hash when it is called
  name_and_age.to_a
  # => [["Genna", 28], ["Brittney", 27], ["Stephanie", 25]]

keys and values # retreive all values or all keys
  name_and_age.keys
  # => ["Genna", "Brittney", "Stephanie"]
  name_and_age.values
  # => [28, 27, 25]

# Because some of these print out as an array, you can use this in cool ways 
# like printing out all the keys in a hash.

name_and_age.each { |k| puts k }

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Older versions of Ruby don't necessarily keep hash in order.
# New Ruby keeps hashes in order.

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 1 - before solution

family = {  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

family.select {|k,v| if k == "sisters" || "brothers" puts k puts v}

# after solution - I was not able to figure this one out without looking at the solution
# I'm still not sure how to get it to be just one array like the solution shows. 

family = {  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

direct_family = family.select {|k,v| k == :sisters || k == :brothers}

direct_family.values.flatten

puts direct_family

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 2

# merge creates a new hash while merge! mutates the original hash

# h1 = { fruits: ["apple", "orange", "pear"]}

# h2 = { fruits: ["banana", "lemon", "grape"]}

h1 = {
  "fruit" => "apple",
  "vegetable" => "carrot"
}

h2 = {
  "fruit" => "orange",
  "vegetable" => "potato"
}

puts h1         
puts h2         
h1.merge(h2)
puts h1         
puts h2

puts h1
puts h2
h1.merge!(h2)
puts h1
puts h2

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 3 - before viewing solution (no changes after viewing solution)

my_hash = { 1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five"
}

my_hash.each_key { |k| puts "One of the keys is #{k}" }
my_hash.each_value { |v| puts "One of the values is #{v}" }
my_hash.each { |k, v| puts "#{k} is #{v}" }

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 4 - before viewing solution

# I would access the name of the person by using the key in square brackets after the 
# name of the hash. It would look like:

puts person[name]

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 5 - before viewing solution

# I could use the method .value? to find out if there is a specific value in a hash.

my_hash = { 1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five"
}

p my_hash.value?("three")     # returns true

p my_hash.value?("seven")     # returns false


# after viewing solution

def verify_value(string)
  my_hash = { 1 => "one", 2 => "two", 3 => "three",}
  if my_hash.value?(string)
    p "It's there, Captain!"
  else
    p "It's not there, Captain."
  end
end

verify_value("seven")   # returns "It's not there, Captain."
verify_value("three")   # returns "It's there, Captain!"

# the drawback to this solution is that the has has to be defined withing the function
# otherwise, when I tried to put the hash before the function, then the function was not
# able to see it.

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 6 - Before viewing the solution

# The difference between the two hashed is that one uses the old syntax "=>" and one uses
# the new syntax ":"

# After viewing the solution

# The purpose of using the two different syntaxes is that the keys are different types.
# The first key is a symbol x and the second key is a string based on the variable x.

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Exercise 7 - before viewing solution (no changes after solution)

# I think this error means that there is not method called keys for an array. Keys are 
# for hashes. 

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
