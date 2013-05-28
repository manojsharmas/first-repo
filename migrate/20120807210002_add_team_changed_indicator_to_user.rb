class AddTeamChangedIndicatorToUser < ActiveRecord::Migration
  def change
    add_column :users, :team_changed, :boolean, default: false
  end
end

