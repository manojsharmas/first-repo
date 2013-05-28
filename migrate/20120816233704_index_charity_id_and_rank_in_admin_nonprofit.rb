class IndexCharityIdAndRankInAdminNonprofit < ActiveRecord::Migration
  def change
    add_index :admin_nonprofits, :charity_id
    add_index :admin_nonprofits, :rank
  end
end

