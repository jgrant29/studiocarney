class AddPictureToDesign < ActiveRecord::Migration
  def change
    add_column :designs, :picture, :string
    add_index :designs, :picture
  end
end
