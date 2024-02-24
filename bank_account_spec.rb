class BankAccount
    attr_reader :balance
  
    def initialize(balance = 0)
      @balance = balance
    end
  
    def deposit(amount)
      @balance += amount
    end
  
    def withdraw(amount)
      @balance -= amount if amount <= @balance
    end
end

RSpec.describe BankAccount do
    describe "#deposit" do
        it "deposits money into the account" do
            account = BankAccount.new(100)
            account.deposit(50)
            expect(account.balance).to eq(150)
        end
    end

    describe "#withdraw" do
        it "withdraws money from the account" do
            account = BankAccount.new(100)
            account.withdraw(50)
            expect(account.balance).to eq(50)
        end
    end
    
    it "does change the balance if insufficient funds" do
        account = BankAccount.new(100)
        account.withdraw(150)
        expect(account.balance).to eq(100)
    end

    it "returns the correct balance" do
        account = BankAccount.new(100)
        expect(account.balance).to eq(100)
    end
end
