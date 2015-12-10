class AddCategoryToConvocations < ActiveRecord::Migration
  def change
    add_column :convocations, :category_id, :integer
  end
end
