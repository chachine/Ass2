class CreateAttAtocks < ActiveRecord::Migration[5.2]
  def change
    create_table :att_atocks do |t|
      t.belongs_to :scan_att_stock, index: true
      t.string :typeV
      t.string :numero
      t.boolean :used

      t.timestamps
    end
  end
end
