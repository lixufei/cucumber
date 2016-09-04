module Knows_my_account
  def my_account
    @my_account ||= Account.new
  end

  def cash_slot
    @cash_slot ||= CashSlot.new
  end

  def teller
    @teller = Teller.new(cash_slot)
  end
end

World(Knows_my_account)