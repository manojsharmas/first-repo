class AddCountyNameToCountyStatistic < ActiveRecord::Migration
  def change
    add_column :comp_giv_ev_county_statistics, :name, :string
  end
end

