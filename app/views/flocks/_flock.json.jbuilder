json.extract! flock, :id, :batch_no, :date_in, :retirement_date, :source, :flock_stored, :initial_stock, :current_stock, :age, :notes, :status_id, :type_id, :created_at, :updated_at
json.url flock_url(flock, format: :json)
