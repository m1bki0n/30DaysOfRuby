# Loops and Iterators
=begin
# While:
i = 0

while i < 20
  puts i
  i += 1
end

# Until

u = 20

until u == 0
  puts u
  u -= 1
end


# For loop

for i in 1...30 # two dots for inclusive
  puts i
end



# Simple iterator

i = 20

loop do
  puts i
  i -= 1
  break if i == 0
end



# Next

i = 10

loop do
  i -= 1
  next if i % 2 == 0 # it will skip 2, 4, 6, 8 (Next it uses for skipping.)
  print "#{i}\n"
  break if i == 1
end

=end

# Example 1

my_array = [2, 5, 8, 1, 0, 12]
=begin
for i in my_array
  next if i % 2 == 0
  puts i
end
=end


# Example 2

my_array.each do |x| # another way: my_array.each { |x| }
  x += 10
  print "#{x}\n"
end
