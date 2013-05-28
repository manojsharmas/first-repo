class AddGreyTeamsToStateStatistic < ActiveRecord::Migration
  def change
    add_column :comp_giv_ev_state_statistics, :num_from_grey_teams, :integer
    add_column :comp_giv_ev_state_statistics, :donations_from_grey_teams, :float
  end
end

