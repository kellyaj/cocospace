class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :timeline_id
      t.string :author_name
      t.string :message

      t.timestamps null: false
    end
  end
end
