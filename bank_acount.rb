class Account
  attr_reader :balance, :record

  def initialize
    @balance = 0
    @record = []
  end

  def deposit(amount, date)
    @balance += amount
    # @record << [{credit: amount}, {date: date}]
  end
  def withdrawl(amount, date)
    @balance -= amount
  end
  def statement

  end

end
