class CreateScanAttStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :scan_att_stocks do |t|
      t.string :filepath
      t.date :le, null: false
      t.string :typeV, null: false
      t.integer :qty, null: false
      t.integer :du, null: false
      t.integer :au, null: false

      t.timestamps
    end
  end
end
