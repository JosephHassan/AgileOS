json.array!(@sprints) do |sprint|
  json.extract! sprint, :id, :title, :description, :start_date, :end_date, :Release_id
  json.url sprint_url(sprint, format: :json)
end
