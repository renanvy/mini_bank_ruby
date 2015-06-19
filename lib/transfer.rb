module Transfer

  def transfer(account_credited, amount)
    @balance -= amount
    account_credited.balance += amount
  end

end