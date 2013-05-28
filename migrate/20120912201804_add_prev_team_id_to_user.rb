class AddPrevTeamIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :prev_team_id, :integer
  end
end

