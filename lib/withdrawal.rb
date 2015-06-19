class Withdrawal

  def initialize(amount, account)
    @amount  = amount
    @account = account
  end

  def self.process(amount, account)
    new(amount, account).tap(&:process)
  end

  def process
    @account.balance -= @amount
  end

end