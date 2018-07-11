class CreateSouscripteurs < ActiveRecord::Migration[5.2]
  def change
    create_table :souscripteurs do |t|
      t.string :titre
      t.string :nom

      t.timestamps
    end
  end
end
