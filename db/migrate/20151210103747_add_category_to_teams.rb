class AddCategoryToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :category_id, :integer
  end
end
