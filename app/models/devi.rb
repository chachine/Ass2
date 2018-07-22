class Devi < ApplicationRecord
  has_one :client
  has_one :vehicule
  has_one :souscripteur
  accepts_nested_attributes_for :client, :vehicule, :souscripteur
  mount_uploader :scan, ScanUploader
end
