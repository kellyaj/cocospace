class Space < ActiveRecord::Base
  include Slugs::Generator
  before_create :assign_slug
  validates_uniqueness_of :slug

  private

  def assign_slug
    self.slug = Slugs::Generator.execute
  end
end
