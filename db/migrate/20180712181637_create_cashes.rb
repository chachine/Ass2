class CreateCashes < ActiveRecord::Migration[5.2]
  def change
    create_table :cashes do |t|
      t.integer :montant

      t.timestamps
    end
  end
end
