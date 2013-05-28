class AddPaperclipLogoToMerchants < ActiveRecord::Migration
  def change
    change_table :merchants do |t|
      t.string :logo_file_name
      t.string :logo_content_type
      t.integer :logo_file_size
      t.datetime :logo_updated_at
    end
  end
end

