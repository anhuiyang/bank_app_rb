class Transaction
  attr_reader :date, :credit, :debit, :balance
  def initialize(date, status, amount, balance)
    @date = Time.new(date.slice(6,4), date.slice(3,2), date.slice(0,2)).strftime("%d/%m/%Y")
    @balance = format('%.2f', balance)
    status == 'credit' ? @credit = format('%.2f', amount) : @debit = format('%.2f', amount)
  end
end
