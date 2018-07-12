class Vehicule < ApplicationRecord
  validates_inclusion_of :carburant, :in => %w(D E)
  validates_inclusion_of :cv, :in => 1..18
  validates_inclusion_of :cylindre, :in => 1..12
  validates_inclusion_of :place, :in => 0..99

  mount_uploader :scan, ScanUploader
end
