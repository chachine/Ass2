class ScanUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
