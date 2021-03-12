# User Input

# Example 1:
=begin
print "Enter your name"
print "\n"
my_name = gets.chomp #lets you get the value from the console
my_name.capitalize! # "!" will modify the value for the next time

print "Enter your age"
print "\n"
my_age = gets.chomp

print"Your name is #{my_name} and you're #{my_age} years old."
=end

# Example 2:
# We want to replace letter "s" to "th"
print "Something please: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th") # gsub (global substitution) uses to replace letters.
elsif user_input.include? "c"
  user_input.gsub!(/c/, "th")
elsif user_input.empty?
  puts "Please enter something!"
else
  puts "Nothing to see here!"
end

print "Final result: #{user_input}."