class ChangeTimelineSpaceIdTypeToInt < ActiveRecord::Migration
  def change
    remove_column :timelines, :space_id
    add_column :timelines, :space_id, :int
  end
end
