class Design < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  has_and_belongs_to_many :design_image_attachments


  def design_last
    @designs.last 
  end
end
