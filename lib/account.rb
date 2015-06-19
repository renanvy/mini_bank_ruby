class Account
  attr_reader :name, :cc, :agency
  attr_accessor :balance

  def initialize(name, cc, agency)
    @name    = name
    @cc      = cc
    @agency  = agency
    @balance = 100.0
  end

  def to_s
    "Ag: #{@agency}\nCC: #{@cc}\nCliente: #{@name}\nSaldo: #{@balance}"
  end
end