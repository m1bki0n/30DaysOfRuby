# Histogram (Data Structures Exercise)

puts "Write something please: "

text = gets.chomp

words = text.split(" ")

frequencies = Hash.new(0)

# Put the text into the hash
words.each { |word| frequencies[word] += 1 }
# Sort the Frequency
frequencies = frequencies.sort_by { |key, value| value}
frequencies.reverse!

frequencies.each do |key, value|
  puts key + " " + value.to_s # converts the data type from numerical to string
end
