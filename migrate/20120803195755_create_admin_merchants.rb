class CreateAdminMerchants < ActiveRecord::Migration
  def change
    create_table :admin_merchants do |t|
      t.date :date
      t.integer :id
      t.integer :rank
      t.string :consumer_name
      t.string :email
      t.string :zip_code
      t.string :federal_ein
      t.integer :s_deposits
      t.integer :s_withdrawals
      t.integer :s_balance
      t.float :d_deposits
      t.float :d_withdrawals
      t.float :d_balance
      t.float :s_d_ratio
      t.string :paid_pending

      t.timestamps
    end
  end
end

