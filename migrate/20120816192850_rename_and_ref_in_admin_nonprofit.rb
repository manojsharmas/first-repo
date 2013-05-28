class RenameAndRefInAdminNonprofit < ActiveRecord::Migration
  def up
    add_column :admin_nonprofits, :paid_pending, :string
    rename_column :admin_nonprofits, :transaction_type, :nonprofit_name
    change_table :admin_nonprofits do |t|
      t.references :charity
    end
    # add a foreign key
    execute <<-SQL
      ALTER TABLE admin_nonprofits 
        ADD CONSTRAINT fk_admin_nonprofits_charities
        FOREIGN KEY (charity_id)
        REFERENCES charities(id)
    SQL
  end

  def down
    remove_column :admin_nonprofits, :paid_pending
    rename_column :admin_nonprofits, :nonprofit_name, :transaction_type
    execute <<-SQL
      ALTER TABLE admin_nonprofits
        DROP FOREIGN KEY fk_admin_nonprofits_charities
    SQL
    remove_column :admin_nonprofits, :charity_id
  end
end

