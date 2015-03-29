json.array!(@blocks) do |block|
  json.extract! block, :id, :type, :size, :support_type
  json.url block_url(block, format: :json)
end
