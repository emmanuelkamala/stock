class Expense < ApplicationRecord
  paginates_per 10

  belongs_to :batch

  def total
    unit_price.to_i * quantity.to_i
  end
end
