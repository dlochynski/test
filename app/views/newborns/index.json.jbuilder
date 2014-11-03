json.array!(@newborns) do |newborn|
  json.extract! newborn, :id, :date_of_birth, :name, :number_of_weeks
  json.url newborn_url(newborn, format: :json)
end
