#Redacted

puts "Please write something:"
text = gets.chomp

puts "Write something else:"
redact = gets.chomp

words = text.split(" ")

new_redact = ""

words.each { |word|
  if word == redact.upcase || word == redact.downcase
    print "REDACTED"
  else
    print word + " "
    new_redact = word
  end
}