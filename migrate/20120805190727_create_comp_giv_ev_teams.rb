class CreateCompGivEvTeams < ActiveRecord::Migration
  def change
    create_table :comp_giv_ev_teams do |t|
      t.string :name

      t.timestamps
    end
  end
end

