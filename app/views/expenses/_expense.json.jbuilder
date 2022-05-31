json.extract! expense, :id, :date, :category, :quantity, :unit_price, :total_amount, :description, :type_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)
