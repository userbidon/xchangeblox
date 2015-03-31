json.array!(@elements) do |element|
  json.extract! element, :id, :type_element, :module, :promotion, :chemin_element, :user_id
  json.url element_url(element, format: :json)
end
