class Timeline < ActiveRecord::Base

  belongs_to :space
  has_many   :posts

  before_create :add_name
  after_create :create_welcome_post

  private

  def add_name
    self.name = "The Timeline"
  end

  def create_welcome_post
    Post.create!({
      :timeline_id => self.id,
      :message => "Write a message on the timeline!",
      :author_name => "coco-bot"
    })
  end
end
