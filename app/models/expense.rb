class Expense < ApplicationRecord
  belongs_to :type
  belongs_to :flock

  def total
    unit_price.to_i * quantity.to_i
  end
end
