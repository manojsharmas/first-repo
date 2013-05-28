class CreateCompGivEvCountyStatistics < ActiveRecord::Migration
  def change
    create_table :comp_giv_ev_county_statistics do |t|
      t.string :district_id
      t.string :state_abbreviation
      t.integer :num_from_team_a
      t.integer :num_from_team_b
      t.float :donations_from_team_a
      t.float :donations_from_team_b

      t.timestamps
    end
  end
end

