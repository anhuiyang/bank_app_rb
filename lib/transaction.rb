class Transaction
  attr_reader :date, :credit, :debit, :balance
  def initialize(date, status, amount, balance)
    @date = date.split('-').join('/')
    @balance = "%.2f" % balance
    if status == "credit"
      @credit = "%.2f" % amount
    elsif status == "debit"
      @debit = "%.2f" % amount
    end
  end
end
