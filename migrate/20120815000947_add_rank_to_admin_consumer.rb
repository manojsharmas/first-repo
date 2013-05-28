class AddRankToAdminConsumer < ActiveRecord::Migration
  def change
    add_column :admin_consumers, :rank, :integer
    add_column :admin_consumers, :user_id, :integer
    add_index  :admin_consumers, :rank
    add_index  :admin_consumers, :user_id
  end
end

