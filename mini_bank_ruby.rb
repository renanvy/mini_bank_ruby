require_relative 'lib/bank_account'
require_relative 'lib/withdrawal'

bank_account_1 = BankAccount.new(name: "Renan", cc: "03141-7", agency: "4939", balance: 100.0)
bank_account_2 = BankAccount.new(name: "Carlos", cc: "03232-5", agency: "4939", balance: 100.0)

puts "Conta antes de efetuar o saque:\n#{bank_account_1.to_s}"

puts ""

puts "Efetuando saque de R$10.0....."

bank_account_1.withdrawal 10

puts ""

puts "Conta depois de efetuar o saque:\n#{bank_account_1.to_s}"

puts ""

puts "Depositando R$20.00 na conta..."

puts ""

bank_account_1.deposit(20.0)

puts "Conta depois de feito o depósito:\n#{bank_account_1.to_s}"

puts ""

puts "Transferindo R$10.00 para outra conta"

puts ""

bank_account_1.transfer(bank_account_2, 10.0)

puts "Conta depois de feito a transferência:\n#{bank_account_1.to_s}"