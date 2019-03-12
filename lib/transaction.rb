class Transaction
  attr_reader :records
  def initialize
    @records = []
  end

  def add(transaction)
    @records << transaction
  end
end
