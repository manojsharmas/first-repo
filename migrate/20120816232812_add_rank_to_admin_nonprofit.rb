class AddRankToAdminNonprofit < ActiveRecord::Migration
  def change
    add_column :admin_nonprofits, :rank, :integer
  end
end
