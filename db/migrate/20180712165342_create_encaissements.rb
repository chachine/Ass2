class CreateEncaissements < ActiveRecord::Migration[5.2]
  def change
    create_table :encaissements do |t|
      t.string :user

      t.timestamps
    end
  end
end
