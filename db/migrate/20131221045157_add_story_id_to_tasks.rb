class AddStoryIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :story_id, :integer
  end
end
