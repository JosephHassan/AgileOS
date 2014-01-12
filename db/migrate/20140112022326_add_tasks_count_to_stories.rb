class AddTasksCountToStories < ActiveRecord::Migration
  def change
    add_column :stories, :tasks_count, :integer, :default => 0

    Story.reset_column_information
    Story.all.each do |s|
      s.update_attribute :tasks_count, s.tasks.length
    end

  end
end
