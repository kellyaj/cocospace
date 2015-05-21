class AddUniqueConstraintToSpace < ActiveRecord::Migration
  def change
    add_index :spaces, :slug, :unique => true
  end
end
