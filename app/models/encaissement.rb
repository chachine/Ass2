class Encaissement < ApplicationRecord
  belongs_to :facture
  has_many :cash, :cheque
end
