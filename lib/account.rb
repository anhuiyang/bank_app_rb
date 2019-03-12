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
    @balance += amount
    cr = credit.new(date, amount, @balance)
    @transaction.add(cr)
  end

  def withdrawl(date, amount, debit = Debit)
    @balance -= amount
    db = debit.new(date, amount, @balance)
    @transaction.add(db)
  end

  def print_statement(statement = Statement.new)
    statement.print(@transaction.records)
  end

  private
  attr_reader :transaction
end
