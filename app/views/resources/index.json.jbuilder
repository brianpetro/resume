json.array!(@resources) do |resource|
  json.site resource, :id, :url
  json.tags resource.tags, :name
  json.qscores resource.qscores, :tag_id, :value
end
