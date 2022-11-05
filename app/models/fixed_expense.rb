require 'csv'

class FixedExpense < ApplicationRecord
  paginates_per 10

  def total
    cost.to_i * quantity.to_i
  end
end
