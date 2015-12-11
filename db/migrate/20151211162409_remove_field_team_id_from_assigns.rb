class RemoveFieldTeamIdFromAssigns < ActiveRecord::Migration
  def change
    remove_column :assigns, :team_id, :integer
  end
end
