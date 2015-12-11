class AddTeamToAssigns < ActiveRecord::Migration
  def change
    add_column :assigns, :team_id, :integer
  end
end
