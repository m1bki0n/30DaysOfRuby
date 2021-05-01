# Blocks, Procs and Lambdas

# Collect
# The collect method takes a block and applies the expression in the block to every element in an array.

fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

puts "Fibs: #{fibs}"

doubled_fibs = fibs.collect { |fib| fib * 2 }

puts "Doubled fibs: #{doubled_fibs}"

# Yield (Ex. 1)
# to accept a block

def yieled_name(name)

  puts "In the method! Let's yield."
  yield("A NAME")
  puts "In between yields!"
  yield(name)
  puts "Block complete! Back in the method."

end

yieled_name("Makwan") do |n|
  puts "My name is #{n}"
end

# Yield (Ex. 2)
def double(num)
  res = num * num
  yield(res)
end

double(14) { |result| puts "Result is #{result}" }

# Computed properties (Ex. 1)

multiple_array = [45, 87, 64, 28, 74]

multiple_of_2 = Proc.new { |x|
  puts x if x % 2 == 0
}

multiple_array.collect(&multiple_of_2)

# (Ex. 2)
group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

over_4_feet = Proc.new { |height|
  height >= 4
}

ride_1 = group_1.select(&over_4_feet)
ride_2 = group_2.select(&over_4_feet)
ride_3 = group_3.select(&over_4_feet)

puts ride_1
puts ride_2
puts ride_3

# (Ex. 3)
def greeter
  yield
end

phrase = Proc.new { puts "Hey there!" }

greeter(&phrase)

# Call Procs
hi = Proc.new {puts "Hello!"}
hi.call

# Pass a Ruby method name around with a symbol:
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers_string = numbers_array.map(&:to_s)
puts numbers_string

# Lambda
# Lambda and Procs are identical

def lambda_demo(a_lambda)
  puts "I'm the method"
  a_lambda.call
end

lambda_demo(lambda {puts "I'm the lambda"})

# Ex. 2

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda {|x| x.is_a? Symbol}
symbols = my_array.select(&symbol_filter)

puts symbols

# Ex. 3
crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}

first_half = lambda {|x, y| y < "M"}

a_to_m = crew.select(&first_half)
puts a_to_m

