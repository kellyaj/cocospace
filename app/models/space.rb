class Space < ActiveRecord::Base
  include Slugs::Generator

  before_create :assign_slug
  after_save :generate_timeline

  validates_uniqueness_of :slug

  has_one :timeline

  private

  def assign_slug
    self.slug = Slugs::Generator.execute
  end

  def generate_timeline
    self.timeline = Timeline.create
  end
end
