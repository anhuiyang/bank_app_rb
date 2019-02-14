class Transaction
  attr_reader :date, :credit, :debit, :balance
  def initialize(date, status, amount, balance)
    @date = date.split('-').join('/')
    @balance = format('%.2f', balance)
    status == 'credit' ? @credit = format('%.2f', amount) : @debit = format('%.2f', amount)
  end
end
