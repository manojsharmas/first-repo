class CreateCategoriesCharities < ActiveRecord::Migration
  def change
    create_table :categories_charities, :id => false do |t|
      t.references :category
      t.references :charity
    end
  end
end

