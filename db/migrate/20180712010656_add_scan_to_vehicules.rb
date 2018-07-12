class AddScanToVehicules < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicules, :scan, :string
  end
end
