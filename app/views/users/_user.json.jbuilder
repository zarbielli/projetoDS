json.extract! user, :id, :email, :cnpj, :password_digest, :created_at, :updated_at
json.url user_url(user, format: :json)
