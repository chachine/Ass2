json.extract! facture, :id, :montant, :montant_recu, :created_at, :updated_at
json.url facture_url(facture, format: :json)
