class AddTeamAssociationToPost < ActiveRecord::Migration
  def change
    add_column :comp_giv_ev_posts, :team_id, :integer
  end
end

