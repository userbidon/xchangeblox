json.array!(@supports) do |support|
  json.extract! support, :id, :type, :size
  json.url support_url(support, format: :json)
end
