class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :space_id
      t.string :datetime
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
