json.array!(@dones) do |done|
  json.extract! done, :gist
  json.url done_url(done, format: :json)
end