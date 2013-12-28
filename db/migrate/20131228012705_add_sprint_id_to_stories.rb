class AddSprintIdToStories < ActiveRecord::Migration
  def change
    add_column :stories, :sprint_id, :integer
  end
end
