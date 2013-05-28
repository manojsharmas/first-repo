class CreateAdminEconomics < ActiveRecord::Migration
  def change
    create_table :admin_economics do |t|
      t.float :prev_d_balance
      t.integer :prev_s_balance
      t.float :SV
      t.float :revenue
      t.float :discount_adv
      t.float :d_deposits
      t.integer :s_deposits
      t.float :d_withdraws
      t.integer :s_withdraws
      t.float :d_balance
      t.integer :s_balance
      t.float :DV
      t.float :end_d_blance
      t.integer :end_s_balance
      t.float :RV

      t.timestamps
    end
  end
end
