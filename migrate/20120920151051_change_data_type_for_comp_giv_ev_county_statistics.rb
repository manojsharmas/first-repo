class ChangeDataTypeForCompGivEvCountyStatistics < ActiveRecord::Migration
  def up
    change_table :comp_giv_ev_county_statistics do |t|
      t.change :donations_from_team_a, :integer
      t.change :donations_from_team_b, :integer
      t.change :donations_from_grey_teams, :integer
    end
  end

  def down
    change_table :comp_giv_ev_county_statistics do |t|
      t.change :donations_from_team_a, :float
      t.change :donations_from_team_b, :float
      t.change :donations_from_grey_teams, :float
    end
  end
end
