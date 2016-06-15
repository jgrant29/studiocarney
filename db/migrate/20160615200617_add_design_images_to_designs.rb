class AddDesignImagesToDesigns < ActiveRecord::Migration
  def change
    add_column :designs, :design_images, :text
  end
end
