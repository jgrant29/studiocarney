class CreateDesigners < ActiveRecord::Migration
  def change
    create_table :designers do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
