# encoding: utf-8

class AvatarUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  process convert: 'png'

  version :standard do
    process resize_to_fill: [150, 250]    
  end

  # version :thumbnail do
  #   process resize_to_fit: [50, 50]
  # end

  def public_id
    return model.username
  end

  # ----------- PREV SETTINGS --------------#

  # include CarrierWave::RMagick

  # storage :file

  # def store_dir
  #   "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  # end

  # process :resize_to_limit => [150, 200]

end
