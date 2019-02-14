require_relative '../lib/statement'

describe 'Statement' do
  let(:transaction) { double :transaction }
  it 'will print a statement of header and a credit transaction log' do
    allow(transaction).to receive(:date).and_return('10/01/2012')
    allow(transaction).to receive(:credit).and_return('1000.00')
    allow(transaction).to receive(:debit).and_return(nil)
    allow(transaction).to receive(:balance).and_return('1000.00')
    statement_format = Statement.new([transaction])
    expect(statement_format.print)
      .to include('date || credit || debit || balance')
    expect(statement_format.output)
      .to include('10/01/2012 || 1000.00 || || 1000.00')
  end
  it 'will print a statement of header and a debit transaction log' do
    allow(transaction).to receive(:date).and_return('14/01/2012')
    allow(transaction).to receive(:credit).and_return(nil)
    allow(transaction).to receive(:debit).and_return('200.00')
    allow(transaction).to receive(:balance).and_return('800.00')
    statement_format = Statement.new([transaction])
    expect(statement_format.print)
      .to include('date || credit || debit || balance')
    expect(statement_format.output)
      .to include('14/01/2012 || || 200.00 || 800.00')
  end
end
