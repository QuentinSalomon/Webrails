json.array!(@prenoms) do |prenom|
  json.extract! prenom, :id, :texte
  json.url prenom_url(prenom, format: :json)
end
