json.array!(@commits) do |commit|
  json.extract! commit, :commit, :repo, :commit_timestamp
  json.url commit_url(commit, format: :json)
end