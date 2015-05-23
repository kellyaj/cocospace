class Timeline < ActiveRecord::Base

  belongs_to :space
  has_many   :posts

  before_create :add_name

  private

  def add_name
    self.name = "The Timeline"
  end
end
