require_relative '../lib/transaction'

describe 'Transaction' do
  it 'store transaction details' do
    transaction.new('10-01-2012', 'credit', 1000, 1000)
    expect(transaction.date).to eq Date.new('2012-01-10')
    expect(transaction.credit).to eq 1000
    expect(transaction.debit).to eq " "
    expect(transaciton.balance).to eq 1000
  end
end
