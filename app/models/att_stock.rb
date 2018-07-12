class AttStock < ApplicationRecord
  belongs_to :scan_att_stock
  validates :numero, uniqueness: { scope: :typeV }
end
