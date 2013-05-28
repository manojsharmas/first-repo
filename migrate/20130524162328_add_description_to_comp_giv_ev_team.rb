class AddDescriptionToCompGivEvTeam < ActiveRecord::Migration
  def change
    add_column :comp_giv_ev_teams, :description, :string
  end
end
