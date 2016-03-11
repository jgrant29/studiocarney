class CreateDesigns < ActiveRecord::Migration
  def change
    create_table :designs do |t|
      t.string :title
      t.text :description
      t.string :build
      t.string :image
      t.string :client
      t.string :location
      t.string :design_time
      t.string :contruction_time

      t.timestamps null: false
    end
  end
end
