class Account
  attr_reader :balance

  def initialize
    @balance = 0
    @record = []
  end

  def deposit(amount, date)
    @balance += amount
  end
  def withdrawl

  end
  def statement

  end

end
