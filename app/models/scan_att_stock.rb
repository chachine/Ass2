class ScanAttStock < ApplicationRecord
  has_many :att_stock, through: :scan_att_stock_id
  mount_uploader :filepath, StockUploader

  validates :qty, :typeV, :du, :au, :le, presence: true
  validate :num_val, :count_val

def create_stock
  if valid?
    (self.du..self.au).each do |n|
    new_att = AttStock.new(:numero => n, :scan_att_stock_id => self.id , :typeV => self.typeV)
    new_att.save
      end
  end
end

def count_val
  errors.add(:qty, 'Quantite invalid') unless
  (du + qty)-1 == au
end

def num_val
  errors.add(:du,'erreur numero') unless
  du < au
end
end
