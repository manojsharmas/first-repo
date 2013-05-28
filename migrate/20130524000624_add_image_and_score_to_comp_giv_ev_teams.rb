class AddImageAndScoreToCompGivEvTeams < ActiveRecord::Migration
  def change
    add_column :comp_giv_ev_teams, :image, :string
    add_column :comp_giv_ev_teams, :score, :float
  end
end
