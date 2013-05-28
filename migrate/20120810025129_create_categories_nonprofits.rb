class CreateCategoriesNonprofits < ActiveRecord::Migration
  def change
    create_table :categories_nonprofits, :id => false do |t|
      t.integer :category_id
      t.integer :non_profit_id
    end
    add_index :categories_nonprofits, :category_id
    add_index :categories_nonprofits, :non_profit_id
  end
end

