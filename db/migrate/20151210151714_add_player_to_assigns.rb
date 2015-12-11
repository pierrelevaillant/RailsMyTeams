class AddPlayerToAssigns < ActiveRecord::Migration
  def change
    add_column :assigns, :player_id, :integer
  end
end
