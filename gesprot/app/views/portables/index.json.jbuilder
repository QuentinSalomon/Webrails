json.array!(@portables) do |portable|
  json.extract! portable, :id, :no_serie, :marque, :etudiant_id
  json.url portable_url(portable, format: :json)
end
