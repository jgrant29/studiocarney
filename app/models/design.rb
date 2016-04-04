class Design < ActiveRecord::Base
  mount_uploader :images, ImagesUploader
end
