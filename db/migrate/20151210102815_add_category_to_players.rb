class AddCategoryToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :category_id, :integer
  end
end
