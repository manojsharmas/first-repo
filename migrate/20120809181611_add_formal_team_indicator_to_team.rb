class AddFormalTeamIndicatorToTeam < ActiveRecord::Migration
  def change
    add_column :comp_giv_ev_teams, :formal, :boolean, default: true
  end
end

