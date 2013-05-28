class CreateJoinTeams < ActiveRecord::Migration
  def change
    create_table :join_teams do |t|
      t.integer :user_id
      t.integer :event_id
      t.integer :team_id

      t.timestamps
    end
  end
end
