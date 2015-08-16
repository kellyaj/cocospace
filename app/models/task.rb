class Task < ActiveRecord::Base
  belongs_to :space
  has_many :task_events
end
