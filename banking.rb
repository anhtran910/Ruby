class Account
    attr_reader :name, :balance
    def initialize(name, balance=100)
      @name = name
      @balance = balance
    end
    
    def display_balance(pin_number)
      puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
    end
    
    def withdraw(pin_number, amount)
      if pin_number == pin
        @balance -= amount
        puts "Withdraw #{amount}. New balance: $#{@balance}."
      else
        puts pin_error
      end
    end
    
    private
    
    def pin
      @pin = 1234
    end
    
    def pin_error
      "Access denied: incorrect PIN."
    end
  end
  
  puts "Input your name"
  name=gets.chomp; 
  puts "Input your balance"
  balance=gets.chomp.to_f
  my_account = Account.new(name, balance)
  puts "Input your pin"
  pin=gets.chomp.to_i
  puts "Here is your account:"
  my_account.display_balance(pin)
  puts "What do you want to do"
  puts "Type 'w' to withdraw"
  puts "Type 'b' to display new balance"
  puts "Type 'e' to exit" 
  choice=gets.chomp.downcase
  Case choice
  when 'w'
    puts "what the amount you want to withdraw"
    amount=gets.chomp.to_f
    my_account.withdraw(pin,amount)
    puts "New balance after withdrawal:"
    my_account.display_balance(pin)
  end
  when 'b'
    puts "Your new balance is:"
    my_account.display_balance(pin)
  
  my_account.withdraw(1234, 500_000)
  my_account.display_balance(1234)
  