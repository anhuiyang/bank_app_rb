require_relative './transaction'
require_relative './statement'
require_relative './debit'
require_relative './credit'

class Account
  attr_reader :balance
  def initialize(transaction = Transaction.new)
    @balance = 0
    @transaction = transaction
  end

  def deposit(date, amount, credit = Credit)
    add_transaction(date, amount, credit)
    @balance
  end

  def withdrawl(date, amount, debit = Debit)
    add_transaction(date, amount, debit)
    @balance
  end

  def print_statement(statement = Statement.new)
    p statement.print(@transaction.records)
  end

  private

  attr_reader :transaction
  def add_transaction(date, amount, type)
    type == Credit ? @balance += amount : @balance -= amount
    record = type.new(date, amount, @balance)
    @transaction.add(record)
  end
end
