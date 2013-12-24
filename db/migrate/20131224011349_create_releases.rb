class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.string :title
      t.text :description
      t.datetime :target_release_date
      t.string :status
      t.belongs_to :Product, index: true

      t.timestamps
    end
  end
end
