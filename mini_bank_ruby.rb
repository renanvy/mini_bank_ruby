require_relative 'lib/bank_account'
require_relative 'lib/withdrawal'

bank_account = BankAccount.new("Renan", "03141-7", "4939")

puts "Conta antes de efetuar o saque:\n#{bank_account.to_s}"

puts ""

puts "Efetuando saque de R$10.0....."

bank_account.withdrawal 10

puts ""

puts "Conta depois de efetuar o saque:\n#{bank_account.to_s}"

puts ""

puts "Depositando R$20.00 na conta..."

bank_account.deposit(20.0)

puts "Conta depois de feito o depósito:\n#{bank_account.to_s}"