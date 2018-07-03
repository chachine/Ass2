class ScanAttStock < ApplicationRecord
  has_many :att_atock, through: :scan_att_stock_id
  mount_uploader :filepath, StockUploader
end
