class AddForeignKeyToSouscripteur < ActiveRecord::Migration[5.2]
  def change
    add_reference :souscripteurs, :devi, index: true
    add_foreign_key :souscripteurs, :devis
  end
end
