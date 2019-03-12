require_relative('../lib/credit')
describe 'Credit' do
  it 'initialize with three parameters' do
    credit = Credit.new('10-01-2012', 1000, 1000)
    expect(credit.date).to eq(Time.new(2012, 0o1, 10))
    expect(credit.amount).to eq('1000.00')
    expect(credit.amount).to eq('1000.00')
  end
end
