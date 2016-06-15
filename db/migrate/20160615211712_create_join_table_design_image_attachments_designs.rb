class CreateJoinTableDesignImageAttachmentsDesigns < ActiveRecord::Migration
  def change
    create_join_table :design_image_attachments, :designs do |t|
      # t.index [:design_image_attachment_id, :design_id]
      # t.index [:design_id, :design_image_attachment_id]
    end
  end
end
