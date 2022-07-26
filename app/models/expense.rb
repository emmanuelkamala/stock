class Expense < ApplicationRecord
  paginates_per 8
  
  belongs_to :type
  belongs_to :batch

  def total
    unit_price.to_i * quantity.to_i
  end
end
