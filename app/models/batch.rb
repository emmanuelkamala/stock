class Batch < ApplicationRecord
  paginates_per 10

  validates :batch_no, presence: true
  has_many :flocks
  has_many :incomes
  has_many :expenses

end
