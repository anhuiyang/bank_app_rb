require_relative('../lib/debit')
describe 'Debit' do
  it 'initialize with three parameters' do
    debit = Debit.new('10-01-2012', 1000, 1000)
    expect(debit.date).to eq(Time.new(2012, 0o1, 10))
    expect(debit.amount).to eq('-1000.00')
    expect(debit.balance).to eq('1000.00')
  end
end
