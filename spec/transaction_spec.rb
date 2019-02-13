require_relative '../lib/transaction'

describe 'Transaction' do
  it 'store transaction details' do
    transaction = Transaction.new('10-01-2012', 'credit', 1000, 1000)
    expect(transaction.date).to eq '10/01/2012'
    expect(transaction.credit).to eq "1000.00"
    expect(transaction.debit).to eq nil
    expect(transaction.balance).to eq "1000.00"
  end
  it 'store transaction details' do
    transaction = Transaction.new('14-01-2012', 'debit', 200, 800)
    expect(transaction.date).to eq '14/01/2012'
    expect(transaction.credit).to eq nil
    expect(transaction.debit).to eq "200.00"
    expect(transaction.balance).to eq "800.00"
  end
end
