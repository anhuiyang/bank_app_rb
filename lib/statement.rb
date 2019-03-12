class Statement
  def initialize
    @logs = "date || credit || debit || balance\n"
  end

  def print(records)
    records.reverse_each do |record|
      if record.amount[0] != '-'
        @logs += record.date.strftime('%d/%m/%Y') + ' || ' + record.amount + ' || || ' + record.balance + "\n"
      else
        @logs += record.date.strftime('%d/%m/%Y') + ' || || ' + record.amount.delete('-') + ' || ' + record.balance + "\n"
      end
    end
    @logs
  end
end
