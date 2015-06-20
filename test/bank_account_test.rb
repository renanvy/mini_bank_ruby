require 'minitest/autorun'
require_relative '../lib/bank_account'

describe BankAccount do

  let(:bank_account_1) { BankAccount.new(name: "Renan", cc: "03141-7", agency: "4939", balance: 100.0) }
  let(:bank_account_2) { BankAccount.new(name: "Carlos", cc: "034354-7", agency: "4939", balance: 100.0) }

  describe "#withdrawal" do
    it "discount R$10.0 in balance from bank account" do
      bank_account_1.withdrawal(10.0)
      expect { bank_account_1.balance.must_equal(90.0) }
    end
  end

  describe "#deposit" do
    it "add R$10.0 in balance to bank account" do
      bank_account_1.deposit(10)
      expect { bank_account_1.balance.must_equal(120.0) }
    end
  end

  describe "#transfer" do
    it "transfer R$10.0 in balance to bank account 2" do
      bank_account_1.transfer(bank_account_2, 10.0)

      expect { bank_account_1.balance.must_equal(90.0) }
      expect { bank_account_2.balance.must_equal(110.0) }
    end
  end

end