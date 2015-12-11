class RemoveFieldUserIdFromAssigns < ActiveRecord::Migration
  def change
    remove_column :assigns, :user_id, :integer
  end
end
