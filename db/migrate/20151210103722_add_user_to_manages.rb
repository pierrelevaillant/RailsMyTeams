class AddUserToManages < ActiveRecord::Migration
  def change
    add_column :manages, :user_id, :integer
  end
end
