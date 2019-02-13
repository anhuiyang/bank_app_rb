require_relative '../bank_acount'
describe 'Account' do
  let(:account) { Account.new }

  it 'can deposit / withdrawl from acount' do
    account.deposit(1000, '10-01-2012')
    account.withdrawl(500, '14/01/2012')
    expect(account.balance).to eq 500
  end
  it 'can show bank statement' do
    account.deposit(1000, '10-01-2012')
    expect(account.records).to include({:balance => "1000", :credit => "1000", :date => "10/01/2012", :debit => " "})
  end
end
