class AddPortfolioToDesigns < ActiveRecord::Migration
  def change
    add_column :designs, :portfolio, :json
  end
end
