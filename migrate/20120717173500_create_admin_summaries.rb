class CreateAdminSummaries < ActiveRecord::Migration
  def change
    create_table :admin_summaries do |t|
      t.string :role
      t.date :date
      t.float :s_deposits
      t.float :s_withdrawals
      t.float :s_balance
      t.float :d_deposits
      t.float :d_withdrawals
      t.float :d_balance
      t.string :paid_pending

      t.timestamps
    end
  end
end

