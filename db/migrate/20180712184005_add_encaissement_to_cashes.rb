class AddEncaissementToCashes < ActiveRecord::Migration[5.2]
    def change
    add_reference :cashes, :encaissement, index: true
    add_foreign_key :cashes, :encaissements

  end
end
