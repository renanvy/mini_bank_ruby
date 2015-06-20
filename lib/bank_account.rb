require_relative "withdrawal"
require_relative "deposit"
require_relative "transfer"

class BankAccount
  include Withdrawal
  include Deposit
  include Transfer

  attr_reader :name, :cc, :agency
  attr_accessor :balance

  def initialize(args)
    @name    = args[:name]
    @cc      = args[:cc]
    @agency  = args[:agency]
    @balance = args[:balance]
  end

  def to_s
    "Ag: #{agency}\nCC: #{cc}\nCliente: #{name}\nSaldo: #{balance}"
  end
end