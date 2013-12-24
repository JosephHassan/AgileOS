class AddProductIdToStories < ActiveRecord::Migration
  def change
    add_column :stories, :product_id, :integer
  end
end
