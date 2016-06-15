class DesignImageAttachment < ActiveRecord::Base
  has_and_belongs_to_many :designs
  mount_uploader :image, PictureUploader
end
