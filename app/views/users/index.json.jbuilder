json.array!(@users) do |user|
  json.extract! user, :id, :name, :password, :mail
  json.url user_url(user, format: :json)
end
