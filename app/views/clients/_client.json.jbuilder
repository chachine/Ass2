json.extract! client, :id, :nom, :prenom, :address, :ville, :pays, :date_naissance, :lieu_naissance, :sexe, :cin, :date_val_cin, :num_permis, :cat_permis, :lieu_permis, :date_permis, :date_val_permis, :created_at, :updated_at
json.url client_url(client, format: :json)
