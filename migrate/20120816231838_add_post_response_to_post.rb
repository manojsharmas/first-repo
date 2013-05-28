class AddPostResponseToPost < ActiveRecord::Migration
  def change
    add_column :comp_giv_ev_posts, :post_responded_to, :integer
  end
end

