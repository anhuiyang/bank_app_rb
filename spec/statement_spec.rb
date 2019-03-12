require_relative '../lib/statement'

describe 'Statement' do
  let(:statement) {Statement.new}
  let(:credit) { double :credit }
  let(:debit) { double :debit }
  let(:transaction) { double :transaction }
  sample = "date || credit || debit || balance\n12/01/2012 || || 200.00 || 800.00\n10/01/2012 || 1000.00 || || 1000.00\n"
  context 'with two record of transaction' do
    before do
      allow(credit).to receive(:date) { Time.new(2012, 0o1, 10) }
      allow(credit).to receive(:amount) { '1000.00' }
      allow(credit).to receive(:balance) { '1000.00' }
      allow(debit).to receive(:date) { Time.new(2012, 0o1, 12) }
      allow(debit).to receive(:amount) { '-200.00' }
      allow(debit).to receive(:balance) { '800.00' }
      allow(transaction).to receive(:records){[credit, debit]}
    end
    it 'will print records in statement format' do
      expect(statement.print(transaction.records)).to eq sample
    end
  end
end
