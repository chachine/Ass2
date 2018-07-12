class AddFactureToEncaissements < ActiveRecord::Migration[5.2]
  def change
    add_reference :encaissements, :facture, index: true
    add_foreign_key :encaissements, :factures
  end
end
