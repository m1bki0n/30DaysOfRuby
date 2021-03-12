# Control Flow

print "Write your name: "
print "\n"

my_name = "Makwan"
your_name = String(gets.chomp)
your_name.capitalize!

# if & elsif & Equal or not
if your_name == my_name
  puts "Hey, we have the same name!"
elsif your_name == "Karwan"
  puts "Hmmm, kidna alike."
else
  puts "Not a chance!"
end


# Unless
hungry = false

unless hungry # returns when the value is false
  puts "Yay, it's time to write some code!"
else
  puts "I just can't do anything."
end

# Example 2:
lunch_time = false

print "Time to eat lunch" unless lunch_time

# Operators
time = Time.new
allow_rest = true

print "It's lunch time!" unless time.hour != 12 && allow_rest
