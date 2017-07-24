class BankAccount 
 attr_reader :name    #read bank accout name 
 def initialize(name) #set argument 
  @name = name        #instantiate instance of bank account with name 
  @transactions = []  #empty array of transactions 
  add_transaction("Beginning Balance", 0) 
 end 

 def credit(description, amount) #set arguments 
  add_transaction(description,amount) #call add_transaction method 
 end

 def debit(description, amount) #set arguments 
  add_transaction(description, -amount) #add negative amount to indicate purchase 
 end 
 
 def add_transaction(description, amount) 
 #append to list of transactions 
  @transactions.push(description: description, amount: amount) #push an array of description and amount keys 
 end 

 def balance
 #loop through transactions to check balance 

  balance = 0.0 
  @transactions.each do |transaction| 
   balance += transaction[:amount] #increment local variable balance with each transaction amount 
  end 

  return balance 
 end 

 def to_s
  "Name: #{name}, Balance: #{sprintf("%0.2f", balance)}" 
  #use sprintf to format with two decimals 
  #use string interpolation 
 end 

  def print_register
   puts "#{name}'s Bank Account"
   puts "-" * 40

   puts "Description".ljust(30) + "Amount".rjust(10)
   @transactions.each do |transaction|
     puts transaction[:description].ljust(30) + sprintf("%0.2f", transaction[:amount]).rjust(10)
   end

   puts "-" * 40
   puts "Balance:".ljust(30) + sprintf("%0.2f", balance).rjust(10)
   puts "-" * 40
  end 
end 

bank_account = BankAccount.new("Ophelia")
bank_account.credit("Painting Sale", 500)
bank_account.debit("Groceries", -20)
puts bank_account
puts "Register: "
bank_account.print_register
