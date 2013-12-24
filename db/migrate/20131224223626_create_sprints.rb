class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.string :title
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.belongs_to :Release, index: true

      t.timestamps
    end
  end
end
