
#Access control and read and write instances
class Person
  #They're enabling us to access to the instance variables
  attr_reader :name
  attr_accessor :age #For both reading and writing, and attr_writer to write-only

  def initialize(name, age, job)
    @name = name
    @age = age
    @job = job
  end

  #Public method
  public
  def personal_info
    puts "Name: #{@name}, age: #{@age}"
  end

  #Private method
  private
  def credit_card
    @credit = "16395211345678"
  end

end

#Module:
# Modules are a toolbox that contains a set methods and constants
# Very much like classes, but modules can’t create instances and can’t have subclasses

module MyLibrary
  #Constants are written in ALL_CAPS:
  FAVE_BOOK = "The Subtle Art of Not Give A F*ck"
end

#Calling out the modules and its constant and methods
puts MyLibrary::FAVE_BOOK


#Requirements
require 'date'

puts Date.today

#Includes
# lets us to use the module's instance and methods (we simply call FAVE_BOOK instead of MyLibrary::FAVE_BOOK)
# Syntax(use inside classes): include Math


#Extend
# allowing instances of a particular class to use the methods
module ThePresent
  def now
    puts "It's #{Time.now.hour > 12 ? Time.now.hour - 12 : Time.now.hour}:#{Time.now.min} #{Time.now.hour < 12 ? 'AM' : 'PM'} (GMT)"
  end
end

class ThePresentClass
  extend ThePresent
end

ThePresentClass.now #No need to do ThePresentClass.new.now


#Review
module Languages
  FAVOURITE = "Ruby"
end

class Master
  include Languages

  def initialize; end
  def victory
    puts FAVOURITE
  end
end

Master.new.victory