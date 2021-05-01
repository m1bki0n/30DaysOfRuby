
class Main
  def initialize(name, age)
    @name = name
    @age = age
  end

  def show_information
    puts "Name: #{@name}, age: #{@age}"
  end

end

n = Main.new("Makwan", 19)
n.show_information

#Inheritance
# we use "<" to inherent from another class

class Secondary < Main

end

n2 = Secondary.new("M", 20).show_information

#Override
# We can create the same method that existed from the inhereted class, Ruby will ignore the inhereted one.

class OVRClass < Main
  def show_information
    puts "There's nothing to show!"
    #When we write "super" keyword, it'll return the inherented method as well.
    super
  end
end

n3 = OVRClass.new("M", 22).show_information

# Example
class Message
  #Class variable (@@)
  @@messages_sent = 0

  def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent += 1
  end
end

my_message = Message.new("Makwan", "Kizhe")

#Inherent class Message to Email
class Email < Message
  def initialize(from, to)
    #"super" keyword allows us to get access for the inherented method. in here, we are not required to create instantes for the parameters.
    super
  end
end

=begin
=end