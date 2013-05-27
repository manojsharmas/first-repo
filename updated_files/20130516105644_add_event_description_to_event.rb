class AddEventDescriptionToEvent < ActiveRecord::Migration
  def change
    add_column :events, :event_desrciption, :string
  end
end
