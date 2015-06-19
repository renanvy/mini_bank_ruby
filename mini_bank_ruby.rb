require_relative 'lib/bank_account'
require_relative 'lib/withdrawal'

bank_account_1 = BankAccount.new("Renan", "03141-7", "4939")
bank_account_2 = BankAccount.new("Carlos", "03232-5", "4939")

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