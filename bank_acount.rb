class Account
  attr_reader :balance, :records

  def initialize
    @balance = 0
    @records = []
  end

  def deposit(amount, date)
    @balance += amount
    @records << { credit: amount.to_s, debit: ' ',
                  date: date.tr('-', '/'), balance: @balance.to_s }
  end

  def withdrawl(amount, date)
    @balance -= amount
    @records << { credit: ' ', debit: amount.to_s,
                  date: date.tr('-', '/'), balance: @balance.to_s }
  end

  def statement
    p 'date || credit || debit || balance'
    @records.reverse_each do |record|
      p record[:date] + '||' + record[:credit] + '||'
      + record[:debit] + '||' + record[:balance]
    end
  end

end
