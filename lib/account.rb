class Account
  attr_accessor :records

  def initialize
    @balance = 0
    @records = []
  end

  def deposit(amount, date = Time.now)
    @balance += amount
    new_transaction = Transaction.new(date, "credit", amount, @balance)
    @records << new_transaction
  end

  def withdrawl(amount, date = Time.now)
    @balance += amount
    new_transaction = Transaction.new(date, "debit", amount, @balance)
    @records << new_transaction
  end

  def statement
    # p 'date || credit || debit || balance'
    # @records.reverse_each do |record|
    #   p record[:date] + '||' + record[:credit] + '||'
    #   + record[:debit] + '||' + record[:balance]
    # end
  end

end
