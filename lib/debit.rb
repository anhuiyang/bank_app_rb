class Debit
  attr_reader :date, :amount, :balance
  def initialize(date, amount, balance)
    @date = Time.new(date.slice(6, 4), date.slice(3, 2), date.slice(0, 2))
    @amount = format('%.2f', -amount)
    @balance = format('%.2f', balance)
  end
end
