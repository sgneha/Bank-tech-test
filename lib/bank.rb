class Bank
  attr_reader :account
  def initialize(account_no)
    @account = Account.new(account_no)
  end
end
