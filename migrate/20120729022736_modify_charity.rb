class ModifyCharity < ActiveRecord::Migration
  def change
    change_table :charities do |t|
      t.remove :credits
      t.remove :imported_from_guidestar
    end
  end
end
