class FixedExpense < ApplicationRecord
  paginates_per 10

  def total
    unit_price.to_i * quantity.to_i
  end
end
