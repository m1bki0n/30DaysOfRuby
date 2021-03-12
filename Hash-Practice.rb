# Hashes and Symbols Practice Project

movies = {
  All_The_Bright_Places: 9,
  Extraction: 8,
  Jumanji: 9,
  Midnight_Sun: 10
}

puts "You can perform add, update, display and delete methods. Just write one of them:"
choose = gets.chomp

case choose

when "add"
  puts "Which movie you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "How many ratings you want to add?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
  else
    puts "The movie is already existed!"
  end

when "update"
  puts "Which movie you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "There's no movie such that name!"
  else
    puts "How many ratings you want to add?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
  end

when "display"
  puts "Which movie you want to display?"
  title = gets.chomp

  if movies[title.to_sym].nil?
    puts "There's no movie such that name!"
  else
    movies.each do |key, value|
      if title.to_sym == key
        puts "#{key}: #{value}"
      end
    end
  end

when "delete"
  puts "Which movie you want to delete?"
  title = gets.chomp

  if movies[title.to_sym].nil?
    puts "There's no movie such that name!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been deleted!"
  end

else
  puts "An error occured!"

end
