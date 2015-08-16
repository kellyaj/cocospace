class CreateTaskEvents < ActiveRecord::Migration
  def change
    create_table :task_events do |t|
      t.string :date
      t.integer :task_id

      t.timestamps null: false
    end
  end
end
