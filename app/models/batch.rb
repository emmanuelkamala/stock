#require 'csv'

class Batch < ApplicationRecord
  # paginates_per 10

  # validates :batch_no, presence: true
  # has_many :flocks
  # has_many :incomes
  # has_many :expenses

  # def self.to_csv
  #   attributes = Batch.column_names

  #   CSV.generate(headers: true) do |csv|
  #     csv << attributes

  #     all.each do |batch|
  #       csv << attributes.map{ |attr| batch.send(attr) }
  #     end
  #   end
  # end

end