class AddForeignKeyToClient < ActiveRecord::Migration[5.2]
  def change
    add_reference :clients, :devi, index: true
    add_foreign_key :clients, :devis
  end
end
