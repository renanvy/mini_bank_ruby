require 'minitest/autorun'
require_relative '../lib/account'

describe Account do

  let(:account) { Account.new("Renan", "03141-7", "4939") }

  describe "#withdrawal" do
    it "discount -10 from bank account" do
      account.withdrawal(10.0)
      expect { account.balance.must_equal(90.0) }
    end
  end

end