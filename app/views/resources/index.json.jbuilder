json.array!(@resources) do |resource|
  json.site resource, :id, :url
  json.tags resource.tags, :name
end
