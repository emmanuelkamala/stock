class Flock < ApplicationRecord
  paginates_per 10
  
  validates :batch_id, presence: true
  validates :retirement_date, presence: true
  validates :date_in, presence: true
  validates :source, presence: true 
  validates :flock_stored, presence: true 
  validates :initial_stock, presence: true 
  validates :died_stock, presence: true 
  
  belongs_to :type
  belongs_to :batch

  def current_stock
    initial_stock - died_stock
  end

  def age_in_weeks
    ((Time.now - date_in)/(86400 * 7)).round(2)
  end

end
