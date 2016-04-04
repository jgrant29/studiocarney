class AddImagesToDesigns < ActiveRecord::Migration
  def change
    add_column :designs, :images, :string
  end
end
