class Account
  attr_accessor :records

  def initialize
    @records = []
  end

  def deposit(amount, date = Time.now)
    new_transaction = Transaction.new(amount, date, "credit")
    @records << new_transaction
  end

  def withdrawl(amount, date = Time.now)
    new_transaction = Transaction.new(amount, date, "credit")
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
