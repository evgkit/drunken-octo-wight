# Example class on Ruby
class BANK_ACCOUNT
  attr_reader :name

  def initialize(name)
    @name = name
    @transactions = []
    add_transaction("Beginning Balance", 0)
  end

  def add_transaction(description, amount)
    @transactions.push(description: description, amount: amount)
  end

  def credit(description, amount)
    add_transaction(description, amount)
  end

  def debit(description, amount)
    add_transaction(description, -amount)
  end

  def balance
    balance = 0
    @transactions.each do |transaction|
      balance += transaction[:amount]
    end
    return balance
  end

  def to_s
    "Name: #{name} Balance: #{sprintf("%0.2f", balance)}"
  end

  def print_separator(symbol, times)
    puts symbol * times
  end

  def print_register
    puts "#{name}'s Bank Account"
    print_separator("-", 40)

    puts "Description".ljust(30) + "Amount".rjust(10)
    @transactions.each do |transaction|
      puts "#{transaction[:description]}".ljust(30) + sprintf("%0.2f", transaction[:amount]).rjust(10)
    end

    print_separator("-", 40)
    puts "Balance:".ljust(30) + sprintf("%0.2f", balance).rjust(10)
    print_separator("-", 40)
  end
end

myAccount = BANK_ACCOUNT.new("DRB")
myAccount.credit("Paycheck", 1000)
myAccount.debit("Gift", 125)
myAccount.debit("Gas", 50.45)
myAccount.print_register