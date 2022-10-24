class Flock < ApplicationRecord
  # attr_reader :date_from, :date_to

  # def initialize(params)
  #   params ||= { }
  #   @date_from = parsed_date(params[:date_from], 7.days.ago.to_date.to_s)
  #   @date_to = parsed_date(params[:date_to], Date.today.to_s)
  # end

  paginates_per 10
  
  validates :batch_id, presence: true
  validates :retirement_date, presence: true
  validates :date_in, presence: true
  validates :source, presence: true 
  validates :initial_stock, presence: true 
  validates :died_stock, presence: true 
  validates :sold_stock, presence: true
  
  belongs_to :batch

  def current_stock
    initial_stock - (died_stock + sold_stock)
  end

  def age_in_weeks
    ((Time.now - date_in)/(86400 * 7)).round(2)
  end

  def flock_scope
    Flock.where('date_in BETWEEN ? AND ?', @date_from, @date_to)
  end


  private 

  def parsed_date(date_string, default)
    Date.parse(date_string)
  rescue ArgumentError, TypeError 
    default
  end

end
