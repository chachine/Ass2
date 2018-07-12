class Client < ApplicationRecord
  validates_inclusion_of :sexe, :in => %w(M F)
  validates_inclusion_of :cat_permis, :in => %w(A1 A B C D EB EC ED)
  mount_uploader :scan, ScanUploader
end
