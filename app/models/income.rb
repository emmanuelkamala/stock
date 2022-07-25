class Income < ApplicationRecord
  belongs_to :type
  belongs_to :flock, class_name: 'Flock', foreign_key: :batch_no

  def amount
    unit_price.to_i * quantity.to_i
  end

  def self.to_csv
    attributes = %w{id date category quantity unit_price type }

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |income|
        csv << attributes.map{ |attr| income.send(attr) }
      end
    end
  end
end
