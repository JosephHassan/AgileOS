json.array!(@stories) do |story|
  json.extract! story, :id, :Title, :Description, :Status
  json.url story_url(story, format: :json)
end
