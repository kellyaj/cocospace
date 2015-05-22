class Timeline < ActiveRecord::Base

  belongs_to :space
  has_many   :posts
end
