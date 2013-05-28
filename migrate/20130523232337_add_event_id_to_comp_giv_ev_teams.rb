class AddEventIdToCompGivEvTeams < ActiveRecord::Migration
  def change
    add_column :comp_giv_ev_teams, :event_id, :integer
  end
end
