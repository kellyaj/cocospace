module Services::Fitness::Data
  class CreatesLogEntryAction
    extend LightService::Action
    expects :log_entry_options
    promises :log_entry

    executed do |context|
      context.log_entry = LogEntry.create(context.log_entry_options)
    end
  end
end
