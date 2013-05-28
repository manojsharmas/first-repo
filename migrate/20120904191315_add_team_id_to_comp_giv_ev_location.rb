class AddTeamIdToCompGivEvLocation < ActiveRecord::Migration
  def change
    add_column :comp_giv_ev_locations, :team_id, :integer
  end
end

