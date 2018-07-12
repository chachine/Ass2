class Vehicule < ApplicationRecord
  mount_uploader :scan, ScanUploader
end
