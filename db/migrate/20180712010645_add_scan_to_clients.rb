class AddScanToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :scan, :string
  end
end
