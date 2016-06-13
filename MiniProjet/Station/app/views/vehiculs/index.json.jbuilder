json.array!(@vehiculs) do |vehicul|
  json.extract! vehicul, :id, :name, :brand, :category, :km, :user_id
  json.url vehicul_url(vehicul, format: :json)
end
