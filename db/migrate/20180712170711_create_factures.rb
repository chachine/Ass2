class CreateFactures < ActiveRecord::Migration[5.2]
  def change
    create_table :factures do |t|
      t.decimal :montant
      t.decimal :montant_recu

      t.timestamps
    end
  end
end
