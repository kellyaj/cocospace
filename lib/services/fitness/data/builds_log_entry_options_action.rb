module Services::Fitness::Data
  class BuildsLogEntryOptionsAction
    extend LightService::Action
    expects :user, :date, :activities
    promises :log_entry_options

    executed do |context|
      context.log_entry_options = {
        :user_id                => context.user.id,
        :date                   => context.date,
        :distance               => get_total_distance(context.activities),
        :calories               => context.activities["caloriesOut"],
        :steps                  => context.activities["steps"],
        :minutes_sedentary      => context.activities["sedentaryMinutes"],
        :minutes_lightly_active => context.activities["lightlyActiveMinutes"],
        :minutes_fairly_active  => context.activities["fairlyActiveMinutes"],
        :minutes_very_active    => context.activities["veryActiveMinutes"]
      }
    end

    def self.get_total_distance(activities)
      activities["distances"].detect { |d| d["activity"] == "total" }["distance"]
    end
  end
end
