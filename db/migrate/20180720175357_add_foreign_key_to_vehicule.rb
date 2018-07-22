class AddForeignKeyToVehicule < ActiveRecord::Migration[5.2]
  def change
    add_reference :vehicules, :devi, index: true
    add_foreign_key :vehicules, :devis
  end
end
