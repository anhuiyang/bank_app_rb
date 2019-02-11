require_relative '../bank_acount'
describe 'Account' do
  let(:account) {Account.new}

  it 'can deposit an amount' do
    account.deposit(1000, '10-01-2012')
    expect(account.balance).to eq 1000
  end

  it 'can withdrawl an amount' do
    account.withdrawl(500, '14/01/2012')
    expect(account.balance).to eq 500
  end
  # it 'can deposit an amount' do
  #   account.deposit(1000, "10-01-2012")
  #   expect(account.statement).to eq ""
  # end
end
