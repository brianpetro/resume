json.array!(@resources) do |resource|
  json.extract! resource, :url
  json.url resource_url(resource, format: :json)
end