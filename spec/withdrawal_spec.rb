require 'minitest/autorun'
require_relative '../lib/withdrawal'
require_relative '../lib/account'

describe Withdrawal do

  let(:account) { Account.new("Renan", "03141-7", "4939") }

  describe ".process" do
    it "discount -10 from bank account" do
      Withdrawal.process(10.0, account)
      expect { account.balance.must_equal(90.0) }
    end
  end

end