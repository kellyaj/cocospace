require 'spec_helper'
require 'slugs/generator'

module Slugs
  describe Generator do
    it "generates an 8-character string" do
      slug = Slugs::Generator.execute

      expect(slug.length).to eq(8)
    end
  end
end
