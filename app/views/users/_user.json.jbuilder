json.extract! user, :id, :email, :name, :role, :status, :created_at, :updated_at
json.url user_url(user, format: :json)
