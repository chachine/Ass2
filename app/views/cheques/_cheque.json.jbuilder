json.extract! cheque, :id, :banque, :numero, :nom, :montant, :etat, :date_reception, :date_encaissement, :created_at, :updated_at
json.url cheque_url(cheque, format: :json)
