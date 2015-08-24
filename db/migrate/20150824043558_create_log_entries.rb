class CreateLogEntries < ActiveRecord::Migration
  def change
    create_table :log_entries do |t|
      t.string :date
      t.float :distance
      t.integer :user_id
      t.integer :calories
      t.integer :steps
      t.integer :minutes_sedentary
      t.integer :minutes_lightly_active
      t.integer :minutes_fairly_active
      t.integer :minutes_very_active

      t.timestamps null: false
    end
  end
end
