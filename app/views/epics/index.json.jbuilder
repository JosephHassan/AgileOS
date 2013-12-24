json.array!(@epics) do |epic|
  json.extract! epic, :id, :title, :description, :Product_id
  json.url epic_url(epic, format: :json)
end
