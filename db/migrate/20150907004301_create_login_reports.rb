class CreateLoginReports < ActiveRecord::Migration
  def change
    create_table :login_reports do |t|
      t.string :username
      t.integer :timestamp
      t.string :ip
      t.string :time
      t.string :country
      t.string :city
      t.string :lat
      t.string :long
      t.string :hostname
      t.string :org

      t.timestamps null: false
    end
  end
end
