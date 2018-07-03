class AddLeToScanAttStocks < ActiveRecord::Migration[5.2]
  def change
    add_column :scan_att_stocks, :le, :datetime
  end
end
