# Data Structures

# Access by Index:
my_array = ["Makwan", "Karwan"]

puts my_array[0]

# Array of Arrays (Multidimensional Arrays):
two_dimensional_array = [[2, 5, 2], [8, 2, 9]]

two_dimensional_array.each do |arr|
  arr.each do |num|
    puts num
  end
end

# Hashes:

# Example 1
my_hash = {
  "name" => "Makwan",
  "age" => 19,
  "hungry" => true #Always haha
}

puts "Age? #{my_hash["age"]} years old."

# Example 2
cats = Hash.new
cats["name"] = "Oliver"

# Example 3: Array and Hash
friends = ["Karwan", "Muhammed", "Karzan"]

p_info = {
  "Name" => "Makwan",
  "Location" => "Kurdistan Region"
}

friends.each { |friend| puts friend }

p_info.each { |key, value| puts "#{key}: #{value}" }
