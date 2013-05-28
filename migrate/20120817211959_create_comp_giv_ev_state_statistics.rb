class CreateCompGivEvStateStatistics < ActiveRecord::Migration
  def change
    create_table :comp_giv_ev_state_statistics do |t|
      t.string :name
      t.integer :num_from_team_a
      t.integer :num_from_team_b
      t.float :donations_from_team_a
      t.float :donations_from_team_b

      t.timestamps
    end
  end
end

