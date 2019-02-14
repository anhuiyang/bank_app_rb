# Account app
A bank account app to interact from console
With a user interface class Account and four methods deposit / withdrawl / balance / statement
Class Transaction to keep each transaction details
Class Statement to output a header and format Transaction logs to print
## Getting Started
1. Clone this repo `git clone git@github.com:anhuiyang/tech_test-bankrb.git`
2. Change directory  `cd tech_test-bankrb`
3. Run bundle install dependencies `bundle`
4. REPL environment either `pry` or `irb`
5. Load the file `require "./lib/account"`
5. Initialize the calss `var account = new Account`
6. Interact with account via `account.deposit(amount, date)` `account.withdrawl(amount, date)` `account.balance` `account.statement`

## Running The Tests
`rspec`

## Built With
[Ruby]

[RSpec]
