json.array!(@resources) do |resource|
  json.site resource, :url
  json.tags resource.tags, :name
end
