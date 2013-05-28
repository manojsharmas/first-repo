class RemoveNonprofitNameFromAdminNonprofit < ActiveRecord::Migration
  def up
    remove_column :admin_nonprofits, :nonprofit_name
  end

  def down
    add_column :admin_nonprofits, :nonprofit_name, :string
  end
end

