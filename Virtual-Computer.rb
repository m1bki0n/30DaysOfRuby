#Virtual Computer
class Computer

  @@users = {}

  def initialize(username, password)
    @username = username
    @password = password
    @@users[username] = password
    @files = {}
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} has created in #{time}.\nUsername: #{@username}, Password: #{@password}"
  end

  #Class Method:
  def Computer.get_users
    @@users
  end

end

my_computer = Computer.new("makwan", 1234)
my_computer.create("info.txt") # info.txt has created in 2021-04-23 01:02:36 +0300. Username: makwan, Password: 1234