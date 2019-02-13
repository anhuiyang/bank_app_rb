class Transaction
  attr_reader :date, :credit, :debit, :balance
  def initialize(date, status, amount, balance)
    @date = date.split('-').join('/')
    @balance = balance
    if status == "credit"
      @credit = amount.to_f
      @debit = " "
    elsif status == "debit"
      @credit = " "
      @debit = amount.to_f
    end
  end
end
