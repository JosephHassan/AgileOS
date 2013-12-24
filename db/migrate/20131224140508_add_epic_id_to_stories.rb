class AddEpicIdToStories < ActiveRecord::Migration
  def change
    add_column :stories, :epic_id, :integer
  end
end
