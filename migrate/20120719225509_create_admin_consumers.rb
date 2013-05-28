class CreateAdminConsumers < ActiveRecord::Migration
  def change
    create_table :admin_consumers do |t|
      t.date :date
      t.string :transaction_type
      t.integer :s_deposits
      t.integer :s_withdrawal
      t.integer :s_balance
      t.float :d_deposits
      t.float :d_withdrawal
      t.float :d_balance
      t.float :s_d_ratio

      t.timestamps
    end
  end
end

