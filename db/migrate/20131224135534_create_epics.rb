class CreateEpics < ActiveRecord::Migration
  def change
    create_table :epics do |t|
      t.string :title
      t.text :description
      t.belongs_to :Product, index: true

      t.timestamps
    end
  end
end
