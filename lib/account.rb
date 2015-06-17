class Account
  attr_reader :cc, :agency, :balance, :person

  def initialize(cc, agency, person, balance = 0.0)
    @cc      = cc
    @agency  = agency
    @balance = balance
    @person  = person
    @balance = balance
  end

  def save
    
  end

  def create
    
  end

  def self.find(id)
    
  end

  def destroy
    
  end

  def to_s
    "Ag: #{@agency}, CC #{@cc}, Cliente : #{@person}"
  end
end