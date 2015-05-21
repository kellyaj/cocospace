module Slugs
  module Generator
    def self.execute
      generate_slug
    end

    private

    def self.generate_slug
      rand(36**8).to_s(36)
    end

  end
end
