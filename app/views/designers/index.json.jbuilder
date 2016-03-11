json.array!(@designers) do |designer|
  json.extract! designer, :id, :title
  json.url designer_url(designer, format: :json)
end
