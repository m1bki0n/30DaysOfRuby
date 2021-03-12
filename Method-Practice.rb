# Method Practice


def alphabetize(arr, rev=false)
  if rev
    arr.sort { |first, second| second <=> first }
    # we could also use:
    # arr.sort!
    # arr.reverse!
  else
    arr.sort { |first, second| first <=> second }
  end
end

books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

print "A-Z: #{alphabetize(books)}\n"
print "Z-A: #{alphabetize(books, true)}"