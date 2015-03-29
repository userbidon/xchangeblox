json.array!(@users) do |user|
  json.extract! user, :id, :name, :login, :password, :mail, :phone, :reviews
  json.url user_url(user, format: :json)
end
