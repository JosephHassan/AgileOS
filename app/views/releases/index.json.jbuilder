json.array!(@releases) do |release|
  json.extract! release, :id, :title, :description, :target_release_date, :status, :Product_id
  json.url release_url(release, format: :json)
end
