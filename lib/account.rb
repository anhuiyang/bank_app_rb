require_relative './transaction'
require_relative './statement'
class Account
  attr_reader :balance

  def initialize
    @balance = 0
    @records = []
  end

  def deposit(amount, date, transaction = Transaction)
    @balance += amount
    save_transaction(date, 'debit', amount, @balance, transaction)
  end

  def withdrawl(amount, date, transaction = Transaction)
    @balance -= amount
    save_transaction(date, 'debit', amount, @balance, transaction)
  end

  def statement(statement = Statement)
    current_statement = statement.new(@records)
    puts current_statement.print
  end
  
  private
  attr_reader :records

  def save_transaction(date, status, amount, balance, transaction)
      log = transaction.new(date, status, amount, balance)
      @records << log
  end
end
