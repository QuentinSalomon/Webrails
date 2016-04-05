json.array!(@etudiants) do |etudiant|
  json.extract! etudiant, :id, :prenom, :nom
  json.url etudiant_url(etudiant, format: :json)
end
