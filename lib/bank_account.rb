require_relative "withdrawal"
require_relative "deposit"

class BankAccount
  include Withdrawal
  include Deposit

  attr_reader :name, :cc, :agency
  attr_accessor :balance

  def initialize(name, cc, agency, balance = 100.0)
    @name    = name
    @cc      = cc
    @agency  = agency
    @balance = balance
  end

  def to_s
    "Ag: #{@agency}\nCC: #{@cc}\nCliente: #{@name}\nSaldo: #{@balance}"
  end
end