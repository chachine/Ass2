class CreateVehicules < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicules do |t|
      t.string :matricule
      t.string :matricule_ant
      t.date :date_mc
      t.date :date_mc_maroc
      t.date :date_mutation
      t.string :usage
      t.string :proprietaire
      t.string :address
      t.date :date_val_cgrise
      t.string :marque
      t.string :type_cgrise
      t.string :genre
      t.string :modele
      t.string :carburant
      t.string :chassis
      t.integer :cylindre
      t.integer :cv
      t.integer :place
      t.integer :ptac
      t.integer :poids
      t.integer :ptmct

      t.timestamps
    end
  end
end
