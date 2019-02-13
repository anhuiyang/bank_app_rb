class Account
  attr_accessor :balance, :records

  def initialize
    @balance = 0
    @records = []
  end

  def deposit(amount, date)
    @balance += amount
    log = Transaction.new(date, "credit", amount, @balance)
    @records << log
  end

  def withdrawl(amount, date)
    @balance -= amount
    log = Transaction.new(date, "debit", amount, @balance)
    @records << log
  end

  def statement
    statement_format = Statement.new(@records)
    statement_format.print
  end

end
