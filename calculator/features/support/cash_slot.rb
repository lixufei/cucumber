class CashSlot
  def contents
    @contents or raise("It's empty!")
  end

  def dispense(amount)
    @contents = amount
  end
end