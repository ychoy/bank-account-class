class BankAccount 
 attr_reader :name    #read bank accout name 
 def intitialize(name) #set argument 
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

end 

#########################################################################
bank_account = BankAccount.new("Ophelia")
puts bank_account.inspect 
bank_account.add_transaction("Groceries", -20)
puts bank_account.inspect  



