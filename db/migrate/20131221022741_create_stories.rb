class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :Title
      t.text :Description
      t.string :Status

      t.timestamps
    end
  end
end
