class ChangeUserCreditsNonNull < ActiveRecord::Migration
  def change
    change_column :users, :credits, :integer, :null => false, :default => 0
  end


end

