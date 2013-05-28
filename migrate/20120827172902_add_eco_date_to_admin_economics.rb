class AddEcoDateToAdminEconomics < ActiveRecord::Migration
  def change
    add_column :admin_economics, :eco_date, :date
  end
end

