class AddStoryIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :story_id, :integer, default: 1
  end
end
