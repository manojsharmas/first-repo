class AddGreyTeamsToCountyStatistic < ActiveRecord::Migration
  def change
    add_column :comp_giv_ev_county_statistics, :num_from_grey_teams, :integer
    add_column :comp_giv_ev_county_statistics, :donations_from_grey_teams, :float
  end
end
