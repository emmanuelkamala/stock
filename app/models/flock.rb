class Flock < ApplicationRecord
  validates :batch_no, presence: true
  validates :retirement_date, presence: true
  validates :date_in, presence: true
  validates :source, presence: true 
  validates :flock_stored, presence: true 
  validates :initial_stock, presence: true 
  validates :died_stock, presence: true 
  #validates :age, presence: true 
  
  belongs_to :type
  has_many :incomes

  def current_stock
    initial_stock - died_stock
  end

  def total_current_stock
    Flock.sum(:select => 'initial_stock - died_stock')
  end

  def age_in_weeks
    ((Time.now - date_in)/(86400 * 7)).round(2)
  end

end
