class ChangeTypoInAdminEconomics < ActiveRecord::Migration
  def change
    rename_column :admin_economics, :end_d_blance, :end_d_balance
  end
end

