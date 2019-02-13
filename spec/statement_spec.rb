require_relative '../lib/statement'

describe 'Statement' do
  let(:transaction){double :transaction}
  it 'will print the format and record log of statement' do
    allow(transaction).to receive(:date).and_return('10/01/2012')
    allow(transaction).to receive(:credit).and_return(1000)
    allow(transaction).to receive(:debit).and_return(' ')
    allow(transaction).to receive(:balance).and_return(1000)
    statement_format = Statement.new([transaction])
    expect(statement_format.print).to include("date || credit || debit || balance")
    expect(statement_format.print).to include("10/01/2012 || 1000.00 || || 1000.00")
  end
end
