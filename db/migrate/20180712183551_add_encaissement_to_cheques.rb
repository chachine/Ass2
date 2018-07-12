class AddEncaissementToCheques < ActiveRecord::Migration[5.2]
  def change
    add_reference :cheques, :encaissement, index: true
    add_foreign_key :cheques, :encaissements
  end
end
