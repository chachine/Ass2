class Souscripteur < ApplicationRecord
  validates_inclusion_of :titre, :in => %w(Ste Mr Mm)
end
