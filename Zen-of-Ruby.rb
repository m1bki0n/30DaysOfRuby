# Refactoring

# A simpler If (Ex. 1)
puts "It's true!" if true

# Ternary Conditional Expression
puts 20 > 10 ? "It's true!" : "It's false!"

# A better Case

puts "Hey there!"
greeting = gets.chomp

case greeting
when "English" then puts "Hello!"
when "Kurdish" then puts "Slav!"
when "French" then puts "Bonjour!"
when "German" then puts "Guten Tag!"
when "Finnish" then puts "Haloo!"
else puts "I don't know that language!"
end

# Conditional Assignment
# It sets a value if the variable is nil
# operator: "||="

favourite_language = nil
puts favourite_language
# ""

favourite_language ||= "Swift"
puts favourite_language # Swift

favourite_language ||= "Ruby"
puts favourite_language # Swift

favourite_language = "Ruby"
puts favourite_language # Ruby

# Implicit Return
# It's not necessary to put "return" keyword inside methods

def add(a, b)
  a + b
end

# Up the Down Staircase

90.upto(100) {|x| puts x}

100.downto(90) {|x| puts x}

"A".upto("Z") {|word| puts word}

# Call and Response
# .respond_to? takes a symbol and returns true if an object can receive that method and false otherwise

age = 19

puts age.respond_to?(:next)

# Being Pushy (concatenation operator)
# we can append items into arrays by using "<<" operator

number_array = [1,2,3]
puts number_array
number_array << 4
puts number_array

# String Interpolation

favorite_things = ["Ruby", "espresso", "candy"]

puts "A few of my favorite things:"

favourite_language.each do |thing|
  puts "I love #{thing}!"
end