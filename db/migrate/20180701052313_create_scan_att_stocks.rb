class CreateScanAttStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :scan_att_stocks do |t|
      t.string :filepath
      t.string :typeV
      t.integer :qty
      t.integer :du
      t.integer :au

      t.timestamps
    end
  end
end
