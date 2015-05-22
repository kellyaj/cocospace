class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |t|
      t.string :space_id

      t.timestamps null: false
    end
    add_index :timelines, :space_id, unique: true
  end
end
