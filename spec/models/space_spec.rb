require 'rails_helper'

RSpec.describe Space, :type => :model do

  let(:space) { Space.create(:name => "space") }

  it "assigns a slug before creation" do
    expect(space.slug.nil?).to be_falsy
  end

  it "generates a timeline and assigns it to the space" do
    timeline = Timeline.find_by_space_id(space.id)

    expect(space.timeline.nil?).to be_falsy
    expect(space.timeline).to eq(timeline)
  end

end
