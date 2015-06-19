require 'minitest/autorun'
require_relative '../lib/bank_account'

describe BankAccount do

  let(:bank_account) { BankAccount.new("Renan", "03141-7", "4939", 100.0) }

  describe "#withdrawal" do
    it "discount -10 from bank account" do
      bank_account.withdrawal(10.0)
      expect { bank_account.balance.must_equal(90.0) }
    end
  end

  describe "#deposit" do
    it "add +10 in bank account" do
      bank_account.deposit(10)
    end
  end

end