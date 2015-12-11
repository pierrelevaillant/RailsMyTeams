class AddUserIdToConvocations < ActiveRecord::Migration
  def change
    add_column :convocations, :user_id, :integer
  end
end
