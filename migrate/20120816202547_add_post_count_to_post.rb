class AddPostCountToPost < ActiveRecord::Migration
  def change
    add_column :comp_giv_ev_posts, :post_count, :integer
  end
end

