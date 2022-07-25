class Batch < ApplicationRecord
  validates :batch_no, presence: true

  has_many :flocks
  has_many :incomes 
  has_many :expenses
end
