json.array!(@justins) do |justin|
  json.extract! justin, :id, :title, :body
  json.url justin_url(justin, format: :json)
end
