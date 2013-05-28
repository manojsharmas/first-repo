class ChangeDataTypeForCompGivEvLocation < ActiveRecord::Migration
  def up
    change_table :comp_giv_ev_locations do |t|
      t.change :district_fips, :string
    end
  end

  def down
    change_table :comp_giv_ev_locations do |t|
      t.change :district_fips, :integer
    end
  end
end
