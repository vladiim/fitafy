# encoding: utf-8

class AvatarUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  process convert: 'png'

  version :standard do
    process resize_to_fit: [250, 150]    
  end

  version :thumbnail do
    process resize_to_fit: [30, 30]
  end

  def public_id
    return model.username
  end

end
