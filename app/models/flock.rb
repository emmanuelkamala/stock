class Flock < ApplicationRecord
  validates :batch_no, presence: true
  validates :retirement_date, presence: true
  validates :date_in, presence: true
  validates :source, presence: true 
  validates :flock_stored, presence: true 
  validates :initial_stock, presence: true 
  validates :died_stock, presence: true 
  validates :age, presence: true 
  validates :status_id, presence: true 

  belongs_to :status
  belongs_to :type

  def current_stock
    initial_stock - died_stock
  end

  def total_current_stock
    Flock.sum(:select => 'initial_stock - died_stock')
  end
end
