json.array!(@stories) do |story|
  json.extract! story, :id, :title, :description, :status
  json.url story_url(story, format: :json)
end
