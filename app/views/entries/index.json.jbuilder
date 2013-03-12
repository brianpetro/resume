json.array!(@entries) do |entry|
  json.extract! entry, :title, :details
  json.url entry_url(entry, format: :json)
end