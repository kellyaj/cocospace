module Services::Fitness::Data
  class CreatesLogEntry
    extend LightService::Organizer

    def self.for(user, date, activities)
      with({
        :user => user,
        :date => date,
        :activities => activities
      }).reduce(actions)
    end

    def self.actions
      [
        BuildsLogEntryOptionsAction,
        CreatesLogEntryAction
      ]
    end
  end
end
