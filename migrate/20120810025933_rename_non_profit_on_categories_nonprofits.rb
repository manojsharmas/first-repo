class RenameNonProfitOnCategoriesNonprofits < ActiveRecord::Migration
  def change
    change_table :categories_nonprofits do |t|
      t.rename :non_profit_id, :nonprofit_id
    end
  end
end

