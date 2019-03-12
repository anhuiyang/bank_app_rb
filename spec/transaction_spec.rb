require_relative '../lib/transaction'

describe 'Transaction' do
  let(:transaction) { Transaction.new }
  let(:credit) { double :Credit }
  let(:debit) { double :Debit }

  context 'credit and debit records' do
    before do
      allow(credit).to receive(:date) { Time.new(2012, 0o1, 10) }
      allow(credit).to receive(:amount) { 1000 }
      allow(credit).to receive(:balance) { 1000 }
      allow(debit).to receive(:date) { Time.new(2012, 0o1, 12) }
      allow(debit).to receive(:amount) { 200 }
      allow(debit).to receive(:balance) { 800 }
    end
    it 'stores deach credit and debit transaction details' do
      transaction.add(credit)
      cr = transaction.records[0]
      expect(cr.date).to eq Time.new(2012, 0o1, 10)
      expect(cr.amount).to eq 1000
      expect(cr.balance).to eq 1000
      transaction.add(debit)
      db = transaction.records[1]
      expect(db.date).to eq Time.new(2012, 0o1, 12)
      expect(db.amount).to eq 200
      expect(db.balance).to eq 800
    end
  end
end
