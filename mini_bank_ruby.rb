require_relative 'lib/account.rb'
require_relative 'lib/withdrawal.rb'

account = Account.new("Renan", "03141-7", "4939")

puts "Conta antes de efetuar o saque:\n#{account.to_s}"

puts ""

puts "Efetuando saque de R$10.0....."

account.withdrawal 10

puts ""

puts "Conta depois de efetuar o saque:\n#{account.to_s}"