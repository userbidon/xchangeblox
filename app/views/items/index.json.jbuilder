json.array!(@items) do |item|
  json.extract! item, :id, :type, :item_id, :price
  json.url item_url(item, format: :json)
end
