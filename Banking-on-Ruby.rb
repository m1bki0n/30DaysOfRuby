
class Account
  attr_reader :name
  attr_reader :balance

  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  # Public Methods:
  public

  def display_balance(pin_number)
    if pin == pin_number
      puts "£#{@balance}"
    else
      puts pin_error
    end
  end

  def withdraw(pin_number, amount)
    if pin == pin_number && amount <= @balance
      @balance -= amount
      puts "Withdrew £#{amount}. New balance: £#{@balance}"
    elsif amount > balance
      puts payment_error
    else
      puts pin_error
    end
  end

  def deposit(pin_number, amount)
    if pin == pin_number && amount <= balance
      @balance += amount
      puts "Deposit £#{amount}. New balance: £#{@balance}"
    elsif amount > balance
      puts payment_error
    else
      puts pin_error
    end
  end

    # Private Methods:
    private

    def pin
      @pin = 1234
    end

    def pin_error
      "Access denied: incorrect PIN."
    end

  def payment_error
    "Process failed: Amount is more than the current balance."
  end

  end

class CheckingAccount < Account
  checking_account = CheckingAccount.new("Makwan", 450)
  checking_account.display_balance(1234)
  checking_account.withdraw(1234, 150)
  checking_account.deposit(1234, 200)
end


