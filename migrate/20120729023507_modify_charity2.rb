class ModifyCharity2 < ActiveRecord::Migration
  def change
    change_table :charities do |t|
      t.integer :credits, :default => 0
      t.boolean :imported_from_guidestar, :default => false
    end
  end
end

