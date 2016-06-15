class CreateDesignImageAttachments < ActiveRecord::Migration
  def change
    create_table :design_image_attachments do |t|
      t.string :image

      t.timestamps null: false
    end
    add_index :design_image_attachments, :image
  end
end
