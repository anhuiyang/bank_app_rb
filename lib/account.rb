require_relative './transaction'
require_relative './statement'
class Account
  attr_reader :balance

  def initialize
    @balance = 0
    @records = []
  end

  def deposit(amount, date)
    @balance += amount
    log = Transaction.new(date, 'credit', amount, @balance)
    @records << log
  end

  def withdrawl(amount, date)
    @balance -= amount
    log = Transaction.new(date, 'debit', amount, @balance)
    @records << log
  end

  def statement
    current_statement = Statement.new(@records)
    puts current_statement.print
  end
  private
  attr_reader :records
end
