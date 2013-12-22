class AddEstimateToStories < ActiveRecord::Migration
  def change
    add_column :stories, :estimate, :integer
  end
end
