class Devi < ApplicationRecord
  has_one :client
  accepts_nested_attributes_for :client
  mount_uploader :scan, ScanUploader
end
