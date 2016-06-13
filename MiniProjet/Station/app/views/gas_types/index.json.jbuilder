json.array!(@gas_types) do |gas_type|
  json.extract! gas_type, :id, :name
  json.url gas_type_url(gas_type, format: :json)
end
