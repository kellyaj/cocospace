module Services::PullRequests
  class FormatsDataAction
    extend LightService::Action
    expects :pull_request, :files
    promises :data

    executed do |context|
      context.data = format_data_for(context.pull_request, context.files)
    end

    def self.format_data_for(pull_request, files)
      pull_request.to_hash.merge({:files => files.map(&:to_hash)})
    end

  end
end
