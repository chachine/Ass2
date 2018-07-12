class CreateCheques < ActiveRecord::Migration[5.2]
  def change
    create_table :cheques do |t|
      t.string :banque
      t.integer :numero
      t.string :nom
      t.decimal :montant
      t.string :etat
      t.date :date_reception
      t.date :date_encaissement

      t.timestamps
    end
  end
end
