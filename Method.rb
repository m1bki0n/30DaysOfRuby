# Methods

# Method
# Example 1 (A simple method)
def greeting
  puts "Welcome to Ruby!"
end

greeting


# Example 2 (Methods with parameters)
def greeting_with_names(greet, *names) # using "*" for last parameter will able us to use two or more parameters for the same parameter (names)
  names.each { |name| puts greet + ", " + name }
end

greeting_with_names("Hello", "Makwan", "Karwan")

# Example 3 (Methods with returned values)
def square(n)
  return n ** 2
end

puts square(5)


# Blocks
[2, 5, 6, 7, 12, 3, 45].each { |num| puts num * 5 }


# Sorting
my_array = [86, 23, 45, 64, 24, 49]
my_array.sort!

books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]
#books.sort!

# Combined Comparison Operator
# uses to combine two Ruby objects. symbol: "<=>"
# it returns "0" if the first one equals to the second one, "1" if greater and "-1" if less than.

book_1 = "A Wrinkle in Time"

book_2 = "A Brief History of Time"

puts book_1 <=> book_2

# Sort by Combined Comparison Operator

books.sort! {|first, second| first <=> second}
puts books

books.sort! {|first, second| second <=> first}
puts books
