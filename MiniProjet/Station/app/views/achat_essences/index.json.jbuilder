json.array!(@achat_essences) do |achat_essence|
  json.extract! achat_essence, :id, :km_traveled, :liters, :price_per_liter, :vehicul_id, :gas_station_id
  json.url achat_essence_url(achat_essence, format: :json)
end
