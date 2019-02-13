class Statement
  attr_reader :output
  def initialize(records)
    @records = records.reverse
    @output = ["date || credit || debit || balance"]
  end
  def print
    @records.each do |record|
      record.debit.nil? ? formate_cr(record) : formate_dr(record)
    end
    @output.each do |line|
    end
  end
  private
  def formate_cr(record)
      @output << record.date + ' || ' + record.credit + ' || || ' + record.balance
  end
  def formate_dr(record)
      @output << record.date + ' || || ' + record.debit + ' || ' + record.balance
  end
end
