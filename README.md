# Bank Tech Test in Ruby
A tech test of bank application

## Description
A simple bank app to interact from console
With a user interface class Account and four methods deposit / withdrawl / balance / print_statement
Class Credit to keep deposit details
Class Debit to keep deposit details
Class Transaction to keep all logs
Class Statement to output the format of Transaction record

## Tech Stack
[Ruby]
[Rspec]
[Rubocop]

## Getting Started
1. Clone this repo `git clone git@github.com:anhuiyang/tech_test-bankrb.git`
2. Change directory  `cd bank_rb`
3. Run bundle install dependencies `bundle`
4. Run the test `rspec`
5. REPL environment either `pry` or `irb`
6. Load the file `require "./lib/account"`
7. Initialize the calss `account = Account.new`
8. Interact with account via `account.deposit(date, amount)` `account.withdrawl(date.amount)` `account.balance` `account.print_statement`
 ![diagram](https://github.com/anhuiyang/tech_test-bankrb/blob/master/images/Screenshot%202019-03-12%20at%203.27.18%20pm.png?raw=true)

## Diagram
![diagram](https://github.com/anhuiyang/tech_test-bankrb/blob/master/images/bank%20-%20diagram.png?raw=true)
