class CreateAttStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :att_stocks do |t|
      t.belongs_to :scan_att_stock, index: true
      t.string :typeV, null: false
      t.string :numero, null: false
      t.boolean :used, null: false, default: false

      t.timestamps
    end
  end
end
