class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :nom
      t.string :prenom
      t.string :address
      t.string :ville
      t.string :pays
      t.date :date_naissance
      t.string :lieu_naissance
      t.string :sexe
      t.string :type_id
      t.string :cin
      t.date :date_val_cin
      t.string :num_permis
      t.string :cat_permis
      t.string :lieu_permis
      t.date :date_permis
      t.date :date_val_permis
      t.integer :tel
      t.integer :tel_whatsapp

      t.timestamps
    end
  end
end
