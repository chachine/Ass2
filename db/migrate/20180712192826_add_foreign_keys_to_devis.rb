class AddForeignKeysToDevis < ActiveRecord::Migration[5.2]
  def change
    add_reference :devis, :client, index: true
    add_foreign_key :devis, :clients

    add_reference :devis, :vehicule, index: true
    add_foreign_key :devis, :vehicules

    add_reference :devis, :souscripteur, index: true
    add_foreign_key :devis, :souscripteurs

    add_reference :devis, :facture, index: true
    add_foreign_key :devis, :factures
  end
end
