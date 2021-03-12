# Hashes and Symbols

# Loop over hashes:
mots = {
  "First name" => "Makwan",
  "Last name" => "Barzan",
  "Age" => 19,
  "Nationality" => "Iraqi"
}

mots.each do |key, value|
  puts value
end

# Setting defaults

no_nil_hash = Hash.new("No Nill Hash")

puts no_nil_hash

#Symbols aren't strings

#puts "String".object_id
#puts "string".object_id

#puts :string.object_id
#puts :string.object_id # It'll always keep one copy, unlike string.


# Symbol syntax

:string
:my_string

# Convert from string to symbol of vice versa

languages = ["HTML", "CSS", "Swift", "Ruby", "C++"]

symbols = []

languages.each do |language|
  lang_sym = language.to_sym # and we have .intern method for that.
  symbols.push(lang_sym)
end

puts symbols

# New hash syntax (Ruby 1.9 and later)
# You no longer need to use the hash rocket (=>) anymore,
# and no need to put symbol before every keys (it automatically does that).

new_hash_syntax = {
  one: 1,
  two: 2
}

puts new_hash_syntax

# Filter hashes

lecture_degrees = {
  cpp: 94,
  java: 90,
  english: 95,
  kurdish: 85
}

result = lecture_degrees.select {|key, value| value >= 94}
puts result

# More methods

lecture_degrees.each_key { |key| puts key, "" }
lecture_degrees.each_value { |value| puts value }