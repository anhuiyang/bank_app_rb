require_relative '../lib/account'
describe 'Account' do
  let(:account) { Account.new }
  it 'can deposit / withdrawl from acount' do
    account.deposit(1000, '10-01-2012')
    account.withdrawl(500, '14/01/2012')
    expect(account.balance).to eq 500
    expect(account.statement).to include("10/01/2012 || 1000.00 || || 1000.00")
    expect(account.statement).to include("14/01/2012 || ||500.00|| 500.00")
  end
end
