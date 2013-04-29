json.array!(@resources) do |resource|
  json.site resource, :id, :url
  json.tags resource.tags, :name
  json.qscores resource.qscores, :id, :tag_id, :value
end
