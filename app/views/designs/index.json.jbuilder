json.array!(@designs) do |design|
  json.extract! design, :id, :title, :description, :, :image, :client, :location, :design_time, :contruction_time
  json.url design_url(design, format: :json)
end
