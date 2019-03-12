require_relative '../lib/account'
describe 'Account' do
  let(:account) { Account.new }
  sample = "date || credit || debit || balance\n14/01/2012 || || 500.00 || 500.00\n10/01/2012 || 1000.00 || || 1000.00\n"

  it 'can deposit / withdrawl / print from acount' do
    account.deposit('10-01-2012', 1000)
    account.withdrawl('14/01/2012', 500)
    expect(account.balance).to eq 500
    expect(account.print_statement).to eq sample
  end
end
