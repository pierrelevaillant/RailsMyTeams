class RemoveFieldCategoryIdFromAssigns < ActiveRecord::Migration
  def change
    remove_column :assigns, :convocation_id, :integer
  end
end
