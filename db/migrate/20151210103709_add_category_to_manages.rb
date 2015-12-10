class AddCategoryToManages < ActiveRecord::Migration
  def change
    add_column :manages, :category_id, :integer
  end
end
