json.array!(@gas_stations) do |gas_station|
  json.extract! gas_station, :id, :latitude, :longitude, :name, :brand
  json.url gas_station_url(gas_station, format: :json)
end
