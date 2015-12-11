class AddTeamToConvocations < ActiveRecord::Migration
  def change
    add_column :convocations, :team_id, :integer
  end
end
