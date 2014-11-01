json.array!(@cities) do |city|
  json.extract! city, :id, :city_name, :city_population, :city_elevation, :city_state
  json.url city_url(city, format: :json)
end
